import 'package:flutter/material.dart';

const Widget kEmptyWidget = SizedBox.shrink();
const kCircleBorder = CircleBorder();

class FullWidthBox extends StatelessWidget {
  const FullWidthBox({Key? key, this.child}) : super(key: key);

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
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: child,
    );
  }
}
