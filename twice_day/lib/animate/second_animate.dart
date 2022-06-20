import 'package:flutter/material.dart';

class SecondAnimatePage extends StatelessWidget {
  const SecondAnimatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("animatedBuilder"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
