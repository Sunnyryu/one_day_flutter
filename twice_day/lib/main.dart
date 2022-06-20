import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twice_day/animate/first_animate.dart';
import 'package:twice_day/animate/provider/first_animate_provider.dart';
import 'package:twice_day/animate/second_animate.dart';
import 'package:twice_day/animate/third_animate.dart';
import 'package:twice_day/home/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => FirstAnimatedProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.red, elevation: 0, centerTitle: true),
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/first': (context) => FirstAnimatePage(),
          '/second': (context) => SecondAnimatePage(),
          '/third': (context) => ThirdAnimatePage(),
        },
      ),
    );
  }
}
