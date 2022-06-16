import 'package:flutter/material.dart';

class ContainerBlockSemantics extends StatelessWidget {
  const ContainerBlockSemantics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      height: 200,
      child: BlockSemantics(
        // BlockSemantics
        // 동일한 semantics 컨테이너에서 이전에 그려진 모든 위젯의 semantics를 삭제하는 위젯
        // 특정 위젯 뒤에 그려진 접근성 도구에서 위젯을 숨기는 데 유용
        // ex) Drawer은 drawer 외부 모든 위젯과 상호작용을 차단함

        blocking: true,
        child: const CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage("https://post-phinf.pstatic.net/MjAyMTAxMjVfMTA1/MDAxNjExNTU3Mzk4MjIy.MEUMpAkus932Fhh-pbLvJrTfgcRSa9lLqnSzItTVjOcg.ua3bCg2MM04cjQR1LUjdol1vgYEhnSmUF-BMDWyZW7Ig.PNG/%EA%B7%80%EC%97%AC%EC%9A%B4%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8.png?type=w1200"),
          child: Text(
            "우리 고양이3",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
