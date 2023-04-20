import 'package:diagnosis/global_assets/global_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DiagnosisCondition extends StatefulWidget {

  @override
  State<DiagnosisCondition> createState() => _DiagnosisConditionState();
}

class _DiagnosisConditionState extends State<DiagnosisCondition> {
  bool first = false;
  bool second = false;
  bool third = false;
  bool fourth = false;
  bool fifth = false;

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
    return Scaffold(
        backgroundColor: GlobalStyle.white,
        body: Get.width > 414
        // ----------------------------PC.ver-------------------------------
        ? Column(
          children: [
            // --------------Header-----------------
            Container(
              height: 160.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: GlobalStyle.background_gray,
              ),
              child: Center(
                child: Text(
                  '내 두피상태 진단',
                  style: TextStyle(
                      fontSize: 4.sp,
                      color: GlobalStyle.dark
                  ),
                ),
              ),
            ),
            // --------------Contents----------------
            Expanded(
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 질문
                    Container(
                      width: 160.w,
                      child: Column(
                        children: [
                          Text(contentsList[1], //질문
                            style: TextStyle(
                                fontSize: 4.sp,
                                color: GlobalStyle.dark,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Container(height: 10.h,),
                          Text(subContentsList[1],//서브 질문
                            style: TextStyle(
                                fontSize: 4.sp,
                                color: GlobalStyle.dark
                            ),
                          ),
                          Container(height: 68.h,),
                          //체크박스
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CheckCircular(
                                  checktap: () {
                                    setState(() {
                                      first = !first;
                                      second = false;
                                      third = false;
                                      fourth = false;
                                      fifth = false;
                                    });
                                  },
                                  color: first ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                  text: '전혀 아니에요',
                                ),
                                CheckCircular(
                                  checktap: () {
                                    setState(() {
                                      second = !second;
                                      first = false;
                                      third = false;
                                      fourth = false;
                                      fifth = false;
                                    });
                                  },
                                  color: second ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                  text: '아니에요',
                                ),
                                CheckCircular(
                                  checktap: () {
                                    setState(() {
                                      third = !third;
                                      first = false;
                                      second = false;
                                      fourth = false;
                                      fifth = false;
                                    });
                                  },
                                  color: third ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                  text: '보통',
                                ),
                                CheckCircular(
                                  checktap: () {
                                    setState(() {
                                      fourth = !fourth;
                                      first = false;
                                      second = false;
                                      third = false;
                                      fifth = false;
                                    });
                                  },
                                  color: fourth ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                  text: '그래요',
                                ),
                                CheckCircular(
                                  checktap: () {
                                    setState(() {
                                      fifth = !fifth;
                                      first = false;
                                      second = false;
                                      third = false;
                                      fourth = false;
                                    });
                                  },
                                  color: fifth ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                  text: '매우 그래요',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // --------------다음/이전 페이지 버튼---------------
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.only(top: 120.h,),
                        width: 38.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: first || second || third || fourth || fifth ? GlobalStyle.green : GlobalStyle.gray,
                            borderRadius: BorderRadius.circular(5.r)
                        ),
                        child: Center(
                          child: Text('다음',
                            style: TextStyle(
                                color: GlobalStyle.white,
                                fontSize: 3.sp
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            )
          ],
        )
        // ----------------------------Mobile.ver-------------------------------
        : SafeArea(
          child: Column(
            children: [
              // --------------Header-----------------
              Container(
                width: double.infinity,
                height: 54,
                color: GlobalStyle.background_gray,
                child: Center(
                  child: Text('내 두피상태 진단',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: GlobalStyle.dark
                    ),
                  ),
                ),
              ),
              // --------------Contents----------------
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      // 질문
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 110.h),
                          child: Column(
                            children: [
                              Text(contentsList[1], //질문
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: GlobalStyle.dark,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Container(height: 26.h,),
                              Text(subContentsList[1],//서브 질문
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: GlobalStyle.dark
                                ),
                              ),
                              Container(height: 100.h,),
                              //체크박스
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    CheckCircular(
                                      checktap: () {
                                        setState(() {
                                          first = !first;
                                          second = false;
                                          third = false;
                                          fourth = false;
                                          fifth = false;
                                        });
                                      },
                                      color: first ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                      text: '전혀 아니에요',
                                    ),
                                    CheckCircular(
                                      checktap: () {
                                        setState(() {
                                          second = !second;
                                          first = false;
                                          third = false;
                                          fourth = false;
                                          fifth = false;
                                        });
                                      },
                                      color: second ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                      text: '아니에요',
                                    ),
                                    CheckCircular(
                                      checktap: () {
                                        setState(() {
                                          third = !third;
                                          first = false;
                                          second = false;
                                          fourth = false;
                                          fifth = false;
                                        });
                                      },
                                      color: third ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                      text: '보통',
                                    ),
                                    CheckCircular(
                                      checktap: () {
                                        setState(() {
                                          fourth = !fourth;
                                          first = false;
                                          second = false;
                                          third = false;
                                          fifth = false;
                                        });
                                      },
                                      color: fourth ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                      text: '그래요',
                                    ),
                                    CheckCircular(
                                      checktap: () {
                                        setState(() {
                                          fifth = !fifth;
                                          first = false;
                                          second = false;
                                          third = false;
                                          fourth = false;
                                        });
                                      },
                                      color: fifth ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                      text: '매우 그래요',
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // --------------다음/이전 페이지 버튼---------------
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 90),
                          width: 100.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: first || second || third || fourth || fifth ? GlobalStyle.green : GlobalStyle.gray,
                              borderRadius: BorderRadius.circular(3.r)
                          ),
                          child: Center(
                            child: Text('다음',
                              style: TextStyle(
                                  color: GlobalStyle.white,
                                  fontSize: 14.sp
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}



//--------체크박스 위젯----------
class CheckCircular extends StatefulWidget {
  final GestureTapCallback checktap;
  final Color color;
  final String text;

  const CheckCircular({
    super.key,
    required this.checktap,
    required this.color,
    required this.text,
  });

  @override
  State<CheckCircular> createState() => _CheckCircularState();
}

class _CheckCircularState extends State<CheckCircular> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.checktap,
          child: Container(
            width: Get.width > 414 ? 13.w : 52.w,
            height: Get.width > 414 ? 13.w : 52.w,
            decoration: BoxDecoration(
                border: Border.all(
                  color: widget.color,
                  width: Get.width > 414 ? 9.5.w : 15.w,
                ),
                borderRadius: BorderRadius.circular(100.r)
            ),
          ),
        ),
        Container(height: 12.h,),
        Text(widget.text,
          style: TextStyle(
            color: GlobalStyle.gray,
            fontSize: Get.width > 414 ? 2.5.sp : 11.sp
          ),
        )
      ],
    );
  }
}
