import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile/features/profile/screens/interests_screen/interests_screen.dart';

class InterestsTestScreen{
  /// Экран
  final Finder interestsScreen = find.byType(InterestsScreen);
  
  /// Элемент интересов 1
  final Finder interestsElem1 = find.byWidgetPredicate((widget) => widget is Text && widget.data == 'Photo');

  /// Элемент интересов 2
  final Finder interestsElem2 = find.byWidgetPredicate((widget) => widget is Text && widget.data == 'Flowers');
}