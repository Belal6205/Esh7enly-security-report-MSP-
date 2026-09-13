import 'package:flutter_test/flutter_test.dart';
import 'package:esh7enly_app/main.dart';

void main() {
  testWidgets('App renders splash screen', (WidgetTester tester) async {
    await tester.pumpWidget(const Esh7enlyApp());
    await tester.pumpAndSettle();

    // Verify the splash screen renders with brand text
    expect(find.text('Power on the go'), findsOneWidget);
    expect(find.text('Get Start'), findsOneWidget);
  });
}
