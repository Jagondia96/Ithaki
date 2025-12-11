// This is a basic Flutter widget test.
//
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:ithaki/app.dart';
import 'package:ithaki/app_config.dart';

void main() {
  testWidgets('Home page smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp(config: AppConfig.dev));

    // Verify that the title is NOT present (header removed).
    expect(find.text('Itháki Home'), findsNothing);
    expect(find.text('Inicio Ithaki'), findsNothing);

    // Verify that our hello world text is present.
    expect(find.text('Hello World'), findsOneWidget);

    // Verify that the subtitle is present.
    expect(find.text('This is a proof of concept'), findsOneWidget);

    // Verify that the buttons are present.
    expect(find.text('View'), findsOneWidget);
    expect(find.text('Edit'), findsOneWidget);

    // Tap the 'View' button and verify the alert.
    await tester.tap(find.text('View'));
    await tester.pump(); // Rebuild for dialog
    expect(find.text('You pressed view'), findsOneWidget);
  });
}
