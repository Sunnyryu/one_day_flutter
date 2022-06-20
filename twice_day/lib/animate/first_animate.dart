import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twice_day/animate/provider/first_animate_provider.dart';

class FirstAnimatePage extends StatefulWidget {
  const FirstAnimatePage({Key? key}) : super(key: key);

  @override
  State<FirstAnimatePage> createState() => _FirstAnimatePageState();
}

class _FirstAnimatePageState extends State<FirstAnimatePage> {
  @override
  Widget build(BuildContext context) {
    bool selected = context.watch<FirstAnimatedProvider>().selected;
    print(selected);
    return Scaffold(
      appBar: AppBar(
        title: const Text("animatedAlign"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Consumer<FirstAnimatedProvider>(builder: (_, firstP, __) {
          return GestureDetector(
            // 제스쳐디텍터를 이용해 클릭 가능하게끔 세팅
            onTap: () {
              firstP.changeSelected();
              print(1);
            },
            child: Center(
              child: Container(
                width: 250.0,
                height: 250.0,
                color: Colors.red,
                child: AnimatedAlign(
                  alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                  // selected의 true false를 이용해서 위치를 바꿔줌
                  duration: const Duration(seconds: 1),
                  // duration을 지정해서 시간을 지정
                  curve: Curves.fastOutSlowIn,
                  // curve의 효과를 지정 (매우 많은 종류가 있음)
                  child: const FlutterLogo(size: 50.0),
                  // flutterLogo를 띄워주기 위한 Widget
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

// AnimatedAlign class => 지정된 Align이 변경될 때마다 지정된 시간동안 child의 위치를 자동으로 전환하는 애니메이션
// 애니메이션의 경우 곡선, 지속시간을 선택할 수 있으며, 자동으로 애니메이션 됌, 더 많은 제어가 필요한 경우에는
// AlignTransition을 대신 사용하는 것이 좋음 => 애니메이션을 미세 조정할 수 있지만.. AnimationController의 수명 주기를
// 수동으로 관리 해야하므로 더 많은 개발 오버헤드 필요!
