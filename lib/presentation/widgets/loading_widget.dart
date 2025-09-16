import 'package:flutter/material.dart';

// Reusable loading indicator
class LoadingWidget extends StatelessWidget {
  final double? height;

  const LoadingWidget({
    super.key,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 200,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
