import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({Key? key, required this.routeName, required this.buttonText}) : super(key: key);
  final String routeName;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    print(routeName);
    return Container(
      color: Colors.pink,
      child: TextButton(
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => Navigator.pushNamed(context, routeName),
      ),
    );
  }
}
