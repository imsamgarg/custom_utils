import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('test', (WidgetTester tester) async {
    // await tester.pumpWidget(Container());
    // await tester.pumpWidget(nil);
    await tester.pumpWidget(const SizedBox());
    final Stopwatch timer = Stopwatch()..start();
    for (int index = 0; index < 500000; index += 1) {
      await tester.pump();
    }
    timer.stop();
    debugPrint('Time taken: ${timer.elapsedMilliseconds}ms');
  });
}
