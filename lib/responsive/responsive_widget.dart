import 'package:custom_utils/responsive/size_type.dart';
import 'package:flutter/material.dart';

typedef ResponsiveWidgetBuilder = Widget Function(
  BuildContext context,
  SizeType sizeType,
);

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    required this.builder,
  });

  final ResponsiveWidgetBuilder builder;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cons) {
        final width = cons.maxWidth;
        final sizeType = SizeType.fromWidth(width);
        return builder(context, sizeType);
      },
    );
  }
}
