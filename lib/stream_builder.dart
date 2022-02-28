import 'package:flutter/material.dart';

class CustomStreamBuilder<T> extends StatelessWidget {
  const CustomStreamBuilder({
    Key? key,
    required this.stream,
    required this.builder,
    required this.errorBuilder,
    required this.loading,
    this.initialData,
  }) : super(key: key);

  final T? initialData;
  final Stream<T> stream;
  final Widget Function(AsyncSnapshot<T> snapshot) builder;
  final Widget Function(Object? error) errorBuilder;
  final Widget loading;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
      initialData: initialData,
      stream: stream,
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
