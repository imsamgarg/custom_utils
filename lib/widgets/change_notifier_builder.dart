import 'package:flutter/material.dart';

typedef ChangeNotifierWidgetBuilder = Widget Function(
  BuildContext context,
  Widget? child,
);

class ChangeNotifierBuilder extends StatefulWidget {
  const ChangeNotifierBuilder({
    super.key,
    required this.builder,
    required this.notifier,
    this.child,
  });

  final ChangeNotifierWidgetBuilder builder;
  final ChangeNotifier notifier;
  final Widget? child;

  @override
  State<ChangeNotifierBuilder> createState() => _ChangeNotifierBuilderState();
}

class _ChangeNotifierBuilderState extends State<ChangeNotifierBuilder> {
  @override
  void initState() {
    widget.notifier.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    widget.notifier.removeListener(_listener);
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant ChangeNotifierBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.notifier != widget.notifier) {
      oldWidget.notifier.removeListener(_listener);
      widget.notifier.addListener(_listener);
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.child);
  }

  void _listener() {
    setState(() {});
  }
}
