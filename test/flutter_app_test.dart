// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:test/test.dart';
import 'package:flutter_app/main.dart';

main() {
  test('Invalid login test.', () {

    // Verify that login fails with wrong user info.
    expect(MyHomePageState().loginUser('wronguser', 'wrongpassword'), false);

  });

  test('Login test with valid credentials.', () {

    // Verify that Login is good with valid user info.
    expect(MyHomePageState().loginUser('demo', 'demo'), true);

  });
}
