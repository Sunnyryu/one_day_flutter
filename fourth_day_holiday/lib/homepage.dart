import 'package:flutter/material.dart';
import 'package:fourth_day_holiday/home.dart';
import 'package:fourth_day_holiday/icon_home.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const IconHome()));
              },
              icon: const Icon(Icons.home)),
          const SizedBox(
            height: 20,
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: const Icon(Icons.image)),
        ],
      ),
    );
  }
}
