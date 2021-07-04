import 'package:flutter/material.dart';

class RowExpanded extends StatelessWidget {
  late final List<Widget> _children;

  RowExpanded({
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
    return Row(
      children: _children,
    );
  }
}

class RowCentered extends Column {
  RowCentered(
    List<Widget> children, {
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) : super(
          children: children,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: mainAxisSize,
        );
}
