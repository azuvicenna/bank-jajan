import 'package:flutter_test/flutter_test.dart';
import 'package:bank_jajan/main.dart';
import 'package:bank_jajan/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen loads properly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
