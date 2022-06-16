import 'package:flutter/material.dart';

class ContainerExcludeSemantics extends StatelessWidget {
  const ContainerExcludeSemantics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      height: 200,
      child: const ExcludeSemantics(
        // child 항목의 모든 descendants의 시맨틱스를 삭제하는 위젯!
        // excluding이 true라면, 해당 위젯(해당 child tree)에서 제외 되옴
        // 혼란스러운 하위 위젯을 숨기는 데 사용하 수 있음
        // example (material library chip 위젯은 chip label과 중복되기에 아바타를 숨킬 수 있음)
        excluding: true,
        child: CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage("https://post-phinf.pstatic.net/MjAyMTAxMjVfMTA1/MDAxNjExNTU3Mzk4MjIy.MEUMpAkus932Fhh-pbLvJrTfgcRSa9lLqnSzItTVjOcg.ua3bCg2MM04cjQR1LUjdol1vgYEhnSmUF-BMDWyZW7Ig.PNG/%EA%B7%80%EC%97%AC%EC%9A%B4%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8.png?type=w1200"),
          child: Text(
            "우리 고양이2",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
