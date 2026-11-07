import 'package:flutter_test/flutter_test.dart';
import 'package:bank_jajan/main.dart';
import 'package:bank_jajan/screens/home_screen.dart';
import 'package:bank_jajan/screens/splash_screen.dart';

void main() {
  testWidgets('SplashScreen loads and transitions to HomeScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(SplashScreen), findsOneWidget);

    await tester.pumpAndSettle(const Duration(seconds: 3));
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
