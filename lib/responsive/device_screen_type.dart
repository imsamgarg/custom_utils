enum DeviceScreenType {
  desktop(950),
  tablet(650),
  mobile(350);

  final double breakpoint;
  const DeviceScreenType(this.breakpoint);

  factory DeviceScreenType.fromWidth(double width) {
    if (width > DeviceScreenType.desktop.breakpoint) {
      return DeviceScreenType.desktop;
    }

    if (width > DeviceScreenType.tablet.breakpoint) {
      return DeviceScreenType.tablet;
    }

    return DeviceScreenType.mobile;
  }
}
