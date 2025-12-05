import 'package:flutter/material.dart';
import 'package:flutter_projects/app_router.dart';
import 'package:flutter_projects/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    final authRepo = AuthRepoImpl();
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ProviderScope(child: AppRouter(authRepo: authRepo)),
    );

    // Verify that our counter starts at 0.
    await tester.enterText(
      find.byType(TextFormField).at(0),
      'test@example.com',
    );
    await tester.enterText(find.byType(TextFormField).at(1), 'password123');

    await tester.tap(find.text('Sign Up'));
    await tester.pump(); // trigger frame
    // Verify that our counter has incremented.
    expect(find.byType(SnackBar), findsOneWidget);
  });
}
