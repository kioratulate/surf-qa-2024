import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/assets/strings/about_me_screen_strings.dart';
import 'package:profile/assets/strings/test_keys.dart';
import 'package:profile/features/profile/screens/about_me_screen/about_me_screen.dart';

class AboutMeTestScreen{
  /// Экран
  final Finder aboutMeScreen = find.byType(AboutMeScreen);

  final Finder aboutMeField = find.byWidgetPredicate((widget) => widget is TextFormField);
  final Finder saveButton = find.byWidgetPredicate((widget) => widget is Text && widget.data == AboutMeScreenStrings.saveButtonTitle);

}