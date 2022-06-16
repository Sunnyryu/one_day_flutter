import 'package:flutter/material.dart';

class ContainerSemantics extends StatelessWidget {
  const ContainerSemantics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      height: 200,
      child: Semantics(
        // Semantics
        // 위젯의 의미에 대한 설명으로 위젯 트리에 주석을 추가하는 위젯!!
        // 접근성 도구 , 검색 엔진 및 기타 의미 분석 소프트웨어에서 용응 프로그램의 의미를 결정하는 데 사용!!

        label: "Free Image",
        child: const CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage("https://post-phinf.pstatic.net/MjAyMTAxMjVfMTA1/MDAxNjExNTU3Mzk4MjIy.MEUMpAkus932Fhh-pbLvJrTfgcRSa9lLqnSzItTVjOcg.ua3bCg2MM04cjQR1LUjdol1vgYEhnSmUF-BMDWyZW7Ig.PNG/%EA%B7%80%EC%97%AC%EC%9A%B4%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8.png?type=w1200"),
          child: Text(
            "우리 고양이",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
