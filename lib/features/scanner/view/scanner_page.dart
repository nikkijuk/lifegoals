// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lifegoals/core/routes.dart';
import 'package:lifegoals/features/scanner/bloc/scanner_bloc.dart';
import 'package:lifegoals/features/scanner/bloc/scanner_event.dart';
import 'package:lifegoals/features/scanner/bloc/scanner_state.dart';
import 'package:logging/logging.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

final MobileScannerController cameraController = MobileScannerController();

final log = Logger('ScannerPage');

class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ScannerBloc(),
      child: const ScannerView(),
    );
  }
}

class ScannerView extends StatelessWidget {
  const ScannerView({super.key});

  @override
  Widget build(BuildContext context) {
    //final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Scanner'),
        actions: [
          IconButton(
            iconSize: 32,
            color: Colors.white,
            onPressed: cameraController.toggleTorch,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.torchState,
              builder: (context, state, child) {
                switch (state) {
                  case TorchState.off:
                    return const Icon(Icons.flash_off, color: Colors.grey);
                  case TorchState.on:
                    return const Icon(Icons.flash_on, color: Colors.yellow);
                }
              },
            ),
          ),
          IconButton(
            iconSize: 32,
            color: Colors.white,
            onPressed: cameraController.switchCamera,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.cameraFacingState,
              builder: (context, state, child) {
                switch (state) {
                  case CameraFacing.front:
                    return const Icon(Icons.camera_front);
                  case CameraFacing.back:
                    return const Icon(Icons.camera_rear);
                }
              },
            ),
          ),
        ],
      ),
      body: MobileScanner(
        //allowDuplicates: false,
        controller: cameraController,
        onDetect: (barcode) {
          // TODO(jnikki): now there's handling only for single code
          final code = barcode.barcodes.first.rawValue;
          handleReadBarcode(context, code);
        },
      ),
      bottomNavigationBar: const ScannedCode(),
      bottomSheet: ElevatedButton(
        onPressed: () => context.go(Routes.home),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }

  void handleReadBarcode(BuildContext context, String? code) {
    switch (code) {
      case null:
        log.warning('Failed to read barcode');
        context.read<ScannerBloc>().add(const ReadFailed());
        break;
      default:
        log.warning("Successfully read barcode '$code'");
        context.read<ScannerBloc>().add(ReadSucceeded(code!));
        break;
    }
  }
}

class ScannedCode extends StatelessWidget {
  const ScannedCode({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScannerBloc, ScannerState>(
      builder: (context, state) => state.maybeWhen(
        found: Text.new,
        orElse: () => const Text('N/A'),
      ),
    );
  }
}
