import 'package:diagnosis/global_assets/global_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiagnosisCondition extends StatefulWidget {

  @override
  State<DiagnosisCondition> createState() => _DiagnosisConditionState();
}

class _DiagnosisConditionState extends State<DiagnosisCondition> {
  double pageWidth =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
  double mobileWidth = 500;
  bool isWeb = false;

  List<String>contentsList = [
    '가족이나 친척에 탈모가 진행된 사람이 있나요?',
    '아토피 또는 알레르기가 있나요?',
    '어렸을 때부터 모발이 가늘고 약한 편인가요?',
    '손, 발이 차고 자주 저린가요?',
    '열이 많고 땀 분비량이 많은 편인가요?',
    '술을 자주 먹는 편인가요?',
    '수면이 불규칙한가요?',
    '인스턴트 음식 섭취가 많은가요?',
    '스트레스를 많이 받는 편인가요?',
    '평소 두피를 만지면 아픈가요?',
    '두피에 각질 또는 염증이 있나요?',
    '샴푸 후 모발이 많이 빠지나요?',
  ];

  List<String>subContentsList = [
    '양가 조부모님 중에 탈모가 있어요.',
    '작은 상처에도 회복이 더디고 햇빛 혹은 특정한 음식물 섭취에 두드러기가 올라오거나 가려워요.',
    '머릿결에 곱슬기가 있고 날씨 영향도 많이 받아요. 습하거나 더운 날에는 헤어스타일링 하기가 쉽지 않아요.',
    '순환이 잘 안되고 쥐도 자주 나는 편이에요. 심장보다 위로 손을 올리면 손이 저리고 불편해요. 손목터널증후군 증상이 있어요.',
    '정수리에 열이 많이 나고 식사할 때도 남들보다 땀이 많이 나는 편이에요. 두피가 붉다는 말을 들은 적이 있어요.',
    '업무 특성상 회식자리가 많거나 술을 즐기는 편이에요.',
    '잠자는 시간이 불규칙하고 불면증이 있어요. 자주 무기력한 기분이 들고 몸에 힘이 없어요.',
    '규칙적인 양질의 식사보다 몰아 먹고 배달 음식을 자주 먹는 편이에요.',
    '남들은 별일 아닌 듯 넘기는 일도 스트레스를 받는 경우가 종종 있어요. 스트레스에 취약한 편이에요.',
    '머리카락을 조금만 당겨도 두피가 아파요. 편두통이 자주 있고 파마나 염색 시 두피가 따가워요.',
    '스트레스받거나 잠을 못 자면 두피가 가렵거나 염증이 심해지는 경향이 있어요. 샴푸 할 때 뜨거운 물로 하는 것을 선호하고 뜨거운 바람으로 말리거나 방치해요.',
    '샴푸 후나 드라이할 때 모발이 많이 빠지는 느낌이 들어요. 자고 일어나면 베개에도 빠져있는 머리카락이 많아졌어요.',
  ];

  @override
  Widget build(BuildContext context) {
    pageWidth = MediaQuery.of(context).size.width;
    isWeb = pageWidth > mobileWidth ? true : false;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 160,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: GlobalStyle.light_green,
              ),
              child: Center(
                child: Text(
                  '내 두피상태 진단',
                  style: TextStyle(
                    fontSize: 20,
                    color: GlobalStyle.dark
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 160,
              color: GlobalStyle.white,
              child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                      for (var i = 0; i < contentsList.length; i++)
                        Check(contents: contentsList[i], subContents: subContentsList[i])
                        ],
                      ),
                      Container(
                        width: 160,
                        height: 42,
                        decoration: BoxDecoration(
                          color: GlobalStyle.gray,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Text('결과보기',
                          style: TextStyle(
                            color: GlobalStyle.white,
                            fontSize: 14
                          ),
                      ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 60)
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}



class Check extends StatefulWidget {

  final String contents;
  final String subContents;

  const Check({
    super.key,
    required this.contents,
    required this.subContents,
});


  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {

  bool first = false;
  bool second = false;
  bool third = false;
  bool fourth = false;
  bool fifth = false;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: first || second || third || fourth || fifth ? 0.4 : 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: Column(
          children: [
            Text(widget.contents,
              style: const TextStyle(
                  fontSize: 18,
                  color: GlobalStyle.dark,
                  fontWeight: FontWeight.w600
              ),
            ),
            Container(height: 12,),
            Text(widget.subContents,
              style: const TextStyle(
                  fontSize: 18,
                  color: GlobalStyle.dark
              ),
            ),
            Container(height: 52,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('전혀 아니다',
                  style: TextStyle(
                      color: GlobalStyle.light_purple,
                      fontSize: 18
                  ),
                ),
                Container(width: 106,),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          first = !first;
                          second = false;
                          third = false;
                          fourth = false;
                          fifth = false;
                        });
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: GlobalStyle.light_purple,
                                width: 3
                            ),
                            borderRadius: BorderRadius.circular(100)
                        ),
                          child: Container(
                            margin: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: first ? GlobalStyle.light_purple : GlobalStyle.transparent,
                                borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(width: 106,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      second = !second;
                      first = false;
                      third = false;
                      fourth = false;
                      fifth = false;
                    });
                  },
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: GlobalStyle.light_purple,
                            width: 3
                        ),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: second ? GlobalStyle.light_purple : GlobalStyle.transparent,
                          borderRadius: BorderRadius.circular(100)

                      ),
                    ),
                  ),
                ),
                Container(width: 106,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      third = !third;
                      first = false;
                      second = false;
                      fourth = false;
                      fifth = false;
                    });
                  },
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: GlobalStyle.gray,
                            width: 3
                        ),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: third ? GlobalStyle.gray : GlobalStyle.transparent,
                          borderRadius: BorderRadius.circular(100)

                      ),
                    ),
                  ),
                ),
                Container(width: 106,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      fourth = !fourth;
                      first = false;
                      second = false;
                      third = false;
                      fifth = false;
                    });
                  },
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: GlobalStyle.green,
                            width: 3
                        ),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: fourth ? GlobalStyle.green : GlobalStyle.transparent,
                          borderRadius: BorderRadius.circular(100)

                      ),
                    ),
                  ),
                ),
                Container(width: 106),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      fifth = !fifth;
                      first = false;
                      second = false;
                      third = false;
                      fourth = false;
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: GlobalStyle.green,
                            width: 3
                        ),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: fifth ? GlobalStyle.green : GlobalStyle.transparent,
                          borderRadius: BorderRadius.circular(100)

                      ),
                    ),
                  ),
                ),
                Container(width: 106,),
                const Text('매우 그렇다',
                  style: TextStyle(
                      color: GlobalStyle.green,
                      fontSize: 18
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
