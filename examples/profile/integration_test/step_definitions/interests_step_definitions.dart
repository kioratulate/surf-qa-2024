import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final interestsStepDefinitions =[
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу экран выбора интересов$'),
        (context, tester) async {
      await tester.pumpUntilVisible(interestsTestScreen.interestsScreen);
      expect(interestsTestScreen.interestsScreen, findsOneWidget);
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю интересы$'),
        (context, tester) async {
      await tester.implicitTap(interestsTestScreen.interestsElem1);
      await tester.implicitTap(interestsTestScreen.interestsElem2);
    },
  ),
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанные интересы$'),
        (context, tester) async {
      await tester.pumpUntilVisible(interestsTestScreen.interestsElem1);
      await tester.pumpUntilVisible(interestsTestScreen.interestsElem2);
      // Список для хранения отмеченных интересов
      final selectedInterests = <String>[];

      // Найти все чекбоксы и проверка их состояния
      final allCheckboxes = find.byType(Checkbox);
      for (var i = 0; i < allCheckboxes.evaluate().length; i++) {
        final checkbox = tester.widget<Checkbox>(allCheckboxes.at(i));
        if (checkbox.value ?? false) {

          final parent = find.ancestor(of: allCheckboxes.at(i), matching: find.byType(Row));
          final textFinder = find.descendant(of: parent, matching: find.byType(Text));
          final textWidget = tester.widget<Text>(textFinder);
          selectedInterests.add(textWidget.data!);
        }
      }

      // Ожидаем, что список совпадает с выбранными интересы
      expect(selectedInterests, equals(['Photo', 'Flowers']));
    },
  ),
];