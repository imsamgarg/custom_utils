import 'package:flutter/material.dart';

class ColSpacedStreched extends Column {
  ColSpacedStreched(
    List<Widget> children, {
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) : super(
          children: children,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: mainAxisSize,
        );
}

class ColCenterStreched extends Column {
  ColCenterStreched(
    List<Widget> children, {
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) : super(
          children: children,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: mainAxisSize,
        );
}

class ColExpanded extends StatelessWidget {
  late final List<Widget> _children;

  ColExpanded({
    Key? key,
    required List<Widget> children,
    List<int>? flex,
  }) : super(key: key) {
    assert(
      children.length == flex?.length || flex == null,
      "length of children and flex must be same",
    );
    flex ??= List.filled(children.length, 1);
    int index = 0;
    children = children.map((e) {
      return Expanded(
        child: e,
        flex: index++,
      );
    }).toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _children,
    );
  }
}

class ColCentered extends Column {
  ColCentered(
    List<Widget> children, {
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) : super(
          children: children,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: mainAxisSize,
        );
}

class ColSplitted extends StatelessWidget {
  late final List<Widget> _children;

  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;

  ColSplitted({
    Key? key,
    required List<Widget> childrens,
    bool isSpaceAround = false,
    required SizedBox divider,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
  }) : super(key: key) {
    int _length = isSpaceAround ? childrens.length + 1 : childrens.length - 1;
    int counter = 1;
    _children = List.generate(_length, (index) {
      if (isSpaceAround) {
        if (index % 2 == 0) return divider;
        return childrens[index - counter++];
      }

      if (index % 2 != 0) return divider;
      return childrens[index ~/ 2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _children,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
    );
  }
}
