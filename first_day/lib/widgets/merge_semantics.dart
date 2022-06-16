import 'package:flutter/material.dart';

class ContainerMergeSemantics extends StatelessWidget {
  const ContainerMergeSemantics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        width: double.infinity,
        height: 200,
        child: MergeSemantics(
          // 하위 항목의 semantics를 병합하는 위젯
          // 이 노드에 뿌리를 둔 하위 트리의 모든 semantics 체계가 semantic 체계 트리의 한 노드를 병합되도록 함
          // 체크박스 위젯 옆에 text node가 있는 위젯의 경우 checkbox의 checked semantic status를 가진 Text 노드의 label
          // 을 레이블과 레이블이 모두 있는 단일 노드로 사용할 수 있음

          // 하위 트리의 두 노드에 semantics가 충돌하는 경우 결과가 무의미 할 수 있음
          // 체크박스가 체크되어 있고 체크박스가 해제되어 있는 서브트리는 체크된 것으로 표시
          // label은 단일 문자열로 merge / 각 레이블을 다른 레이블과 구분하는 개행 / merge된 하위 트리의 여러 노드
          // semantics 제스쳐를 처리할 수 있는 경우 tree 순서의 첫번 쨰 노드가 콜백을 수신하는 노드가 됌
          child: Row(
            children: <Widget>[
              Checkbox(
                value: true,
                onChanged: (bool? value) {},
              ),
              const Text('Settings'),
            ],
          ),
        ));
  }
}
