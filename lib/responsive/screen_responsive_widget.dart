import 'package:custom_utils/responsive/device_screen_type.dart';
import 'package:flutter/material.dart';

typedef ScreenResposiveWidgetBuilder = Widget Function(
  BuildContext context,
  DeviceScreenType screenType,
);

class ScreenResponsiveWidget extends StatefulWidget {
  const ScreenResponsiveWidget({
    super.key,
    required this.builder,
  });

  final ScreenResposiveWidgetBuilder builder;

  @override
  State<ScreenResponsiveWidget> createState() => _ScreenResponsiveWidgetState();
}

class _ScreenResponsiveWidgetState extends State<ScreenResponsiveWidget> {
  late DeviceScreenType deviceScreenType;

  @override
  void didChangeDependencies() {
    final width = MediaQuery.of(context).size.width;
    deviceScreenType = DeviceScreenType.fromWidth(width);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, deviceScreenType);
  }
}
