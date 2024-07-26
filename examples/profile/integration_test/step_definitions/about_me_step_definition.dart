import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';

final aboutMeStepDefinitions = [
  testerThen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу экран данных о себе$'),
        (context, tester) async {
      await tester.pumpUntilVisible(aboutMeTestScreen.aboutMeScreen);
      expect(aboutMeTestScreen.aboutMeScreen, findsOneWidget);
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю информацию о себе$'),
        (context, tester) async {
      await tester.implicitEnterText(aboutMeTestScreen.aboutMeField, 'Very important information about me.');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я сохраняю данные о себе$'),
        (context, tester) async {
      await tester.implicitTap(aboutMeTestScreen.saveButton);
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я вижу указанную информацию о себе$'),
        (context, tester) async {
      await tester.pumpUntilVisible(aboutMeTestScreen.aboutMeField);
      final info = tester.widget<TextFormField>(aboutMeTestScreen.aboutMeField).controller?.text;
      expect(info, 'Very important information about me.');
    },
  ),
];