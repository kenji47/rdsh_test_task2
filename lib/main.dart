
import 'package:flutter/material.dart';
import 'package:rdsh_test_task2/pages/add_task/dialog_page.dart';
import 'package:rdsh_test_task2/pages/add_task/step_1_page.dart';
import 'package:rdsh_test_task2/pages/add_task/step_2_page.dart';
import 'package:rdsh_test_task2/pages/add_task/step_3_page.dart';

//import 'package:RDSH/models/app_state.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color(0xff2858A5),
          secondary: Color(0xff272755),
          background: Color(0xffF1F3F9),
          error: Color(0xffDC2F14),
          onBackground: Color(0xff9393AA),
          onSurface: Color(0xffc2c2c2),
          secondaryVariant: Color(0xffA0A9B9),
        ),
        cardColor: Color(0xffF1F3F9),
        focusColor: Color(0xffD12D17),
        dividerColor: Color(0xffF1F3F9),
        primaryTextTheme: theme.textTheme.copyWith(
          headline1: TextStyle(
            fontFamily: 'TTNorms',
            color: Color(0xff272755),
            fontWeight: FontWeight.w700,
            fontSize: 20,
            letterSpacing: 0.38,
          ),
          headline2: TextStyle(
            fontFamily: 'TTNorms',
            fontWeight: FontWeight.w500,
            color: Color(0xff272755),
            fontSize: 17,
            letterSpacing: -0.41,
          ),
          headline3: TextStyle(
            fontFamily: 'TTNorms',
            color: Color(0xff272755),
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: -0.32,
          ),
          subtitle1: TextStyle(
            fontFamily: 'TTNorms',
            //2858A5
            color: Color(0xff2858A5),
            //color: Color(0xff9393AA),
            fontWeight: FontWeight.w400,
            fontSize: 13,
            letterSpacing: -0.08,
          ),
          subtitle2: TextStyle(
            fontFamily: 'TTNorms',
            color: Color(0xff272755),
            fontWeight: FontWeight.w500,
            fontSize: 15,
            letterSpacing: -0.24,
          ),
          button: TextStyle(
            fontFamily: 'TTNorms',
            color: Color(0xff2858A5),
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: -0.32,
          ),
          overline: TextStyle(
            fontFamily: 'TTNorms',
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.w500,
            fontSize: 12,
            letterSpacing: 0.0,
          ),
        ),
        // textTheme: theme.textTheme.copyWith(
        //   headline2: TextStyle(
        //     fontWeight: FontWeight.w800,
        //     fontSize: 24,
        //     fontFamily: 'SF Pro Text',
        //     letterSpacing: 0.0, // TODO: добавление шрифтов
        //   ),
        //   headline6: TextStyle(
        //     fontWeight: FontWeight.w800,
        //     fontSize: 20,
        //     fontFamily: 'SF Pro Text', // TODO: добавление шрифтов
        //   ),
        //   headline3: TextStyle(
        //     fontWeight: FontWeight.w600,
        //     fontSize: 17,
        //     fontFamily: 'SF Pro Text', // TODO: добавление шрифтов
        //   ),
        //   subtitle2: TextStyle(
        //     fontWeight: FontWeight.w600,
        //     fontSize: 13,
        //     fontFamily: 'SF Pro Text', // TODO: добавление шрифтов
        //   ),
        //   bodyText1: TextStyle(
        //     fontWeight: FontWeight.w500,
        //     fontSize: 14,
        //     fontFamily: 'SF Pro Text', // TODO: добавление шрифтов
        //   ),
        //   bodyText2: TextStyle(
        //     fontWeight: FontWeight.w600,
        //     fontSize: 15,
        //     fontFamily: 'SF Pro Text', // TODO: добавление шрифтов
        //   ),
        //   button: TextStyle(
        //     fontWeight: FontWeight.w600,
        //     fontSize: 16,
        //     fontFamily: 'SF Pro Text', // TODO: добавление шрифтов
        //   ),
        //   caption: TextStyle(
        //     fontWeight: FontWeight.w700,
        //     fontSize: 11,
        //     fontFamily: 'SF Pro Text', // TODO: добавление шрифтов
        //   ),
        //   overline: TextStyle(
        //     fontWeight: FontWeight.w500,
        //     fontSize: 12,
        //     fontFamily: 'SF Pro Text',
        //     letterSpacing: 0.0, // TODO: добавление шрифтов
        //   ),
        // ),
      ),
      home: Step1Page(),
      routes: <String, WidgetBuilder>{
        //todo default
        '/step1': (BuildContext context) => Step1Page(),
        '/step2': (BuildContext context) => Step2Page(),
        '/step3': (BuildContext context) => Step3Page(),
        '/dialog': (BuildContext context) => DialogPage(),
      },
    );
  }
}
