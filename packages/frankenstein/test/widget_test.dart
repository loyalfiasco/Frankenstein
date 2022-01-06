import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:frankenstein/frankenstein.dart';

void main() {
  testWidgets('Child displays smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ZZ(
      child: Text('0'),
    ));

    // Verify that our child is rendered
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });
}
