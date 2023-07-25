// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tabbar/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Tabbar Menü Test', (WidgetTester tester) async {
    // Uygulamayı başlatın
    await tester.pumpWidget(MyApp());

    // Başlangıçta ilk tabın seçili olduğunu doğrulayın
    expect(find.text('Browse'), findsOneWidget);
    expect(find.text('Profile'), findsNothing);
    expect(find.text('Chat'), findsNothing);
    expect(find.text('Menu'), findsNothing);

    // Profile tabına tıklayarak geçiş yapın ve doğrulayın
    await tester.tap(find.text('Profile'));
    await tester.pump();
    expect(find.text('Browse'), findsNothing);
    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('Chat'), findsNothing);
    expect(find.text('Menu'), findsNothing);

    // Chat tabına tıklayarak geçiş yapın ve doğrulayın
    await tester.tap(find.text('Chat'));
    await tester.pump();
    expect(find.text('Browse'), findsNothing);
    expect(find.text('Profile'), findsNothing);
    expect(find.text('Chat'), findsOneWidget);
    expect(find.text('Menu'), findsNothing);

    // Menu tabına tıklayarak geçiş yapın ve doğrulayın
    await tester.tap(find.text('Menu'));
    await tester.pump();
    expect(find.text('Browse'), findsNothing);
    expect(find.text('Profile'), findsNothing);
    expect(find.text('Chat'), findsNothing);
    expect(find.text('Menu'), findsOneWidget);
  });
}
