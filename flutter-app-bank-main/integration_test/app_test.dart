import 'package:form_example/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: unused_import
import 'package:form_example/main.dart';
// ignore: unused_import
import 'package:form_example/view_page.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Submit Data', (){

    testWidgets('Verifikasi Inputan Data', 
      (tester) async {
        app.main();
        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(0), 'Wira');
        await Future.delayed(const Duration(seconds: 2));  
        await tester.enterText(find.byType(TextField).at(1), '149');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(2), '04-12-02');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(3), 'MALE');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(4), '0822912819281');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(5), 's2');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(6), 'ISLAM MUHHAMADDIYAH');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(7), 'MAHASISWA');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(8), 'Bekasi');
        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField).at(9), 'Lah au');
        await Future.delayed(const Duration(seconds: 2));
        await tester.tap(find.byType(ElevatedButton));
        await Future.delayed(const Duration(seconds: 2));
        await tester.pumpAndSettle();

        await Future.delayed(const Duration(seconds: 2));
        expect(find.byType(ViewPage), findsOneWidget);

      },
    );

  });
}