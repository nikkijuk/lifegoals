import 'package:flutter/material.dart';
import 'package:lifegoals/constants/border.dart';
import 'package:vector_math/vector_math.dart';

class RotatedImage extends StatelessWidget {
  final String assetPath;
  const RotatedImage({
    Key? key,
    required this.assetPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -radians(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          BorderConstants.borderRadius,
        ),
        child: Image.asset(this.assetPath),
      ),
    );
  }
}
