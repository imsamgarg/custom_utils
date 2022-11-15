import 'package:custom_utils/utils/logger.dart';
import 'package:flutter/material.dart';

mixin ChangeNotifierHook on ChangeNotifier {
  final _notifiers = <ChangeNotifier>[];

  final bool _isDisposed = false;

  TextEditingController useTextController({String? text}) {
    final _con = TextEditingController(text: text);
    return useController<TextEditingController>(_con);
  }

  FocusNode useFocusNode({String? text}) {
    final _con = FocusNode();
    return useController<FocusNode>(_con);
  }

  PageController usePageController({
    int initialPage = 0,
    bool keepPage = true,
    double viewportFraction = 1.0,
  }) {
    final _con = PageController(
      initialPage: initialPage,
      keepPage: keepPage,
      viewportFraction: viewportFraction,
    );
    return useController(_con);
  }

  T useController<T extends ChangeNotifier>(T controller) {
    Logger.log('${controller.runtimeType} created', name: 'Riverpod Hook');
    _notifiers.add(controller);
    return controller;
  }

  @override
  void dispose() {
    if (_isDisposed) return;

    for (final _notifier in _notifiers) {
      Logger.log("${_notifier.runtimeType} disposed", name: 'Riverpod Hook');

      _notifier.dispose();
    }

    super.dispose();
  }
}
