import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Image(
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          ),
          Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          Image.asset('icons/heart.png', package: 'my_icons')
        ],
      ),
    );
  }
}


// Image 자체 위젯에는 Image , Image.network, Image.assets, Image.file, Image.memory 등이 있다.
// NetworkImages, AssetsImages 등도 있다
// flutter:
//   assets:
//     - images/cat.png
  // assets:
  //   - packages/fancy_backgrounds/backgrounds/background1.png