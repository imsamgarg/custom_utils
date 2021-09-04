import 'package:flutter/material.dart';

class CustomFutureBuilder extends StatelessWidget {
  const CustomFutureBuilder({
    Key? key,
    required this.future,
    required this.builder,
    this.errorBuilder,
    required this.loading,
  }) : super(key: key);

  final Future future;
  final Widget Function(AsyncSnapshot) builder;
  final Widget Function(AsyncSnapshot)? errorBuilder;
  final Widget loading;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return errorBuilder != null
              ? errorBuilder!(snapshot)
              : Center(child: Text("Error"));
        }
        if (snapshot.hasData) {
          return builder(snapshot);
        }
        return loading;
      },
    );
  }
}
