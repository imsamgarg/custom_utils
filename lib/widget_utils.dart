import 'package:flutter/material.dart';

const kEmptyWidget = SizedBox.shrink();
const kCircleBorder = CircleBorder();

class FullWidthBox extends StatelessWidget {
  const FullWidthBox({super.key, this.child});

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: child,
    );
  }
}

class WhiteContainer extends StatelessWidget {
  const WhiteContainer({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: child,
    );
  }
}
