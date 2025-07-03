import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:personal_notes/main.dart'; // This should point to your main.dart

void main() {
  testWidgets('Basic login screen loads', (WidgetTester tester) async {
    // Load your LoginPage inside a MaterialApp
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginPage(),
      ),
    );

    // Verify Email and Password fields are present
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);

    // Verify Login button is present
    expect(find.text('Login'), findsOneWidget);
  });
}
