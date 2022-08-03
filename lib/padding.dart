import 'package:flutter/cupertino.dart';

const double dp0 = 0.0;
const double dp1 = 1.0;
const double dp2 = 2.0;
const double dp3 = 3.0;
const double dp4 = 4.0;
const double dp5 = 5.0;
const double dp6 = 6.0;
const double dp8 = 8.0;
const double dp10 = 10.0;
const double dp12 = 12.0;
const double dp14 = 14.0;
const double dp16 = 16.0;
const double dp20 = 20.0;
const double dp24 = 24.0;
const double dp28 = 28.0;
const double dp32 = 32.0;
const double dp40 = 40.0;
const double dp48 = 48.0;
const double dp56 = 56.0;
const double dp64 = 64.0;

const p4 = EdgeInsets.all(dp4);
const p8 = EdgeInsets.all(dp8);
const p10 = EdgeInsets.all(dp10);
const p12 = EdgeInsets.all(dp12);
const p16 = EdgeInsets.all(dp16);
const p20 = EdgeInsets.all(dp20);
const p24 = EdgeInsets.all(dp24);
const p28 = EdgeInsets.all(dp28);
const p32 = EdgeInsets.all(dp32);

const px4 = EdgeInsets.symmetric(horizontal: dp4);
const px8 = EdgeInsets.symmetric(horizontal: dp8);
const px10 = EdgeInsets.symmetric(horizontal: dp10);
const px12 = EdgeInsets.symmetric(horizontal: dp12);
const px16 = EdgeInsets.symmetric(horizontal: dp16);
const px20 = EdgeInsets.symmetric(horizontal: dp20);
const px24 = EdgeInsets.symmetric(horizontal: dp24);
const px28 = EdgeInsets.symmetric(horizontal: dp28);
const px32 = EdgeInsets.symmetric(horizontal: dp32);

const py4 = EdgeInsets.symmetric(vertical: dp4);
const py8 = EdgeInsets.symmetric(vertical: dp8);
const py10 = EdgeInsets.symmetric(vertical: dp10);
const py12 = EdgeInsets.symmetric(vertical: dp12);
const py16 = EdgeInsets.symmetric(vertical: dp16);
const py20 = EdgeInsets.symmetric(vertical: dp20);
const py24 = EdgeInsets.symmetric(vertical: dp24);
const py28 = EdgeInsets.symmetric(vertical: dp28);
const py32 = EdgeInsets.symmetric(vertical: dp32);

class CustomPadding extends StatelessWidget {
  final Widget child;
  final EdgeInsets p;

  const CustomPadding({
    super.key,
    required this.p,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: p, child: child);
  }
}

class Padding4 extends CustomPadding {
  const Padding4({super.key, required super.child}) : super(p: p4);
}

class Padding8 extends CustomPadding {
  const Padding8({super.key, required super.child}) : super(p: p8);
}

class Padding12 extends CustomPadding {
  const Padding12({super.key, required super.child}) : super(p: p12);
}

class Padding16 extends CustomPadding {
  const Padding16({super.key, required super.child}) : super(p: p16);
}

class Padding20 extends CustomPadding {
  const Padding20({super.key, required super.child}) : super(p: p20);
}

class Padding24 extends CustomPadding {
  const Padding24({super.key, required super.child}) : super(p: p24);
}

class Padding28 extends CustomPadding {
  const Padding28({super.key, required super.child}) : super(p: p28);
}

class Padding32 extends CustomPadding {
  const Padding32({super.key, required super.child}) : super(p: p32);
}

/// Checks//
///
/// Horizontal
class PaddingX4 extends CustomPadding {
  const PaddingX4({super.key, required super.child}) : super(p: px4);
}

class PaddingX8 extends CustomPadding {
  const PaddingX8({super.key, required super.child}) : super(p: px8);
}

class PaddingX12 extends CustomPadding {
  const PaddingX12({super.key, required super.child}) : super(p: px12);
}

class PaddingX16 extends CustomPadding {
  const PaddingX16({super.key, required super.child}) : super(p: px16);
}

class PaddingX20 extends CustomPadding {
  const PaddingX20({super.key, required super.child}) : super(p: px20);
}

class PaddingX24 extends CustomPadding {
  const PaddingX24({super.key, required super.child}) : super(p: px24);
}

class PaddingX28 extends CustomPadding {
  const PaddingX28({super.key, required super.child}) : super(p: px28);
}

class PaddingX32 extends CustomPadding {
  const PaddingX32({super.key, required super.child}) : super(p: px32);
}

///
/// //Vertical
class PaddingY4 extends CustomPadding {
  const PaddingY4({super.key, required super.child}) : super(p: py4);
}

class PaddingY8 extends CustomPadding {
  const PaddingY8({super.key, required super.child}) : super(p: py8);
}

class PaddingY12 extends CustomPadding {
  const PaddingY12({super.key, required super.child}) : super(p: py12);
}

class PaddingY16 extends CustomPadding {
  const PaddingY16({super.key, required super.child}) : super(p: py16);
}

class PaddingY20 extends CustomPadding {
  const PaddingY20({super.key, required super.child}) : super(p: py20);
}

class PaddingY24 extends CustomPadding {
  const PaddingY24({super.key, required super.child}) : super(p: py24);
}

class PaddingY28 extends CustomPadding {
  const PaddingY28({super.key, required super.child}) : super(p: py28);
}

class PaddingY32 extends CustomPadding {
  const PaddingY32({super.key, required super.child}) : super(p: py32);
}
