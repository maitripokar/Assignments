import 'package:flutter/material.dart';
import 'package:modual3/Q49/gridview.dart';
import 'package:modual3/Q49/screen2.dart';
import 'package:modual3/Q50/reversetext.dart';
import 'package:modual3/Q51/reversenumber.dart';
import 'package:modual3/Q52/CalculatorScreen.dart';
import 'package:modual3/Q53/bgchange.dart';
import 'package:modual3/Q54/fontsize.dart';
import 'package:modual3/Q55/CheckboxExample.dart';
import 'package:modual3/Q56/ImagesAroundText.dart';
import 'package:modual3/Q57/ColorScreen.dart';
import 'package:modual3/Q58/ColorAdjustmentScreenState.dart';
import 'package:modual3/Q59/loginsignup.dart';
import 'package:modual3/Q60/RestaurantScreen.dart';
import 'package:modual3/Q60/screenn2.dart';
import 'package:modual3/Q60/screenn3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scrreen2(),
    );
  }
}
