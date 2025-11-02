import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kana/src/app.dart';

void main() {
  testWidgets('App should build successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: KanaApp(),
      ),
    );

    // Verify that the app builds without errors
    expect(find.text('Home Page - Coming Soon'), findsOneWidget);
  });
}
