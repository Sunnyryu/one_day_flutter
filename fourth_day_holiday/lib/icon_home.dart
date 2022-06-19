import 'package:flutter/material.dart';
import 'package:fourth_day_holiday/assets_image.dart';
import 'package:fourth_day_holiday/image_provder.dart';

class IconHome extends StatelessWidget {
  const IconHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 36.0,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // IconButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => ImageProviderExample()));
          //   },
          //   icon: Icon(Icons.lte_mobiledata_rounded),
          // ),
          // IconButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const AssetImagesExample()));
          //   },
          //   icon: Icon(Icons.e_mobiledata),
          // ),
        ],
      ),
    );
  }
}

// 아이콘이야 많이 사용해서 따로 정보를 적진 않았다.

// IconButton, Icons, IconsThenme, ImageIcon 등 여러가지로 쓰인다

// const IconTheme(
//{Key? key,
//required IconThemeData data,
//required Widget child}
//) 
// 위와 같은 방식으로 쓰인다

