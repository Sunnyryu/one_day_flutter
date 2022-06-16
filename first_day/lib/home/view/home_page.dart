import 'package:flutter/material.dart';
import 'package:first_day/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("semantics test"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                ContainerSemantics(),
                SizedBox(
                  height: 30,
                ),
                ContainerExcludeSemantics(),
                SizedBox(
                  height: 30,
                ),
                ContainerBlockSemantics(),
                SizedBox(
                  height: 30,
                ),
                ContainerMergeSemantics(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
