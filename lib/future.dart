import 'package:flutter/material.dart';

class CustomFutureBuilder<T> extends StatelessWidget {
  const CustomFutureBuilder({
    Key? key,
    required this.future,
    required this.builder,
    required this.errorBuilder,
    required this.loading,
    this.initialData,
  }) : super(key: key);

  final T? initialData;
  final Future<T> future;
  final Widget Function(AsyncSnapshot<T> snapshot) builder;
  final Widget Function(Object? error) errorBuilder;
  final Widget loading;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      initialData: initialData,
      future: future,
      builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
        if (snapshot.hasError) {
          return errorBuilder(snapshot.error);
        }
        if (snapshot.hasData) {
          return builder(snapshot);
        }
        return loading;
      },
    );
  }
}
