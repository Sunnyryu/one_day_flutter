import 'package:flutter/material.dart';
import 'package:twice_day/widget/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            HomePageButton(routeName: '/first', buttonText: "AnimatedAlign"),
            SizedBox(
              height: 20,
            ),
            HomePageButton(routeName: '/second', buttonText: "AnimatedBuilder"),
            SizedBox(
              height: 20,
            ),
            HomePageButton(routeName: '/third', buttonText: "AnimatedContainer"),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
