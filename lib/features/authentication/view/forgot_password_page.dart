// coverage:ignore-file

import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage(this.email, {super.key});

  final String email;

  @override
  Widget build(BuildContext context) {
    return ForgotPasswordView(email);
  }
}

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView(this.email, {super.key});

  final String email;

  @override
  Widget build(BuildContext context) {
    return ForgotPasswordScreen(email: email, headerMaxExtent: 200);
  }
}
