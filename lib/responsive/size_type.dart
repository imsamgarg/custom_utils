enum SizeType {
  extraSmall(250),
  small(350),
  medium(550),
  large(750),
  extraLarge(950);

  final double size;

  const SizeType(this.size);

  factory SizeType.fromWidth(double width) {
    if (width < SizeType.extraSmall.size) return SizeType.extraSmall;
    if (width < SizeType.small.size) return SizeType.small;
    if (width < SizeType.medium.size) return SizeType.medium;
    if (width < SizeType.large.size) return SizeType.large;
    // if (width < SizeType.extraLarge.size) return SizeType.extraLarge;

    return SizeType.extraLarge;
  }
}
