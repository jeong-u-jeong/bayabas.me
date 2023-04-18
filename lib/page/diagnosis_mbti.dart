import 'package:diagnosis/global_assets/global_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String>contentsList = [
  '밤 10시 이후에 취침해요.',
  '자기 전보다는 주로 아침에 머리를 감아요.',
  '1년에 3회 이상 염색, 파마 등의 헤어 시술을 해요.',
  '인스턴트 음식을 즐겨 먹어요.',
  '뜨거운 물로 샤워하는 것을 좋아해요.',
  '머리를 자주 묶어요.',
  '주 2회 이상 술을 마셔요.',
  '교대 근무를 해요.',
  '물보다는 커피, 차, 탄산 등의 음료를 즐겨 마셔요.',
  '운동을 거의 하지 않아요.',
  '남의 눈치를 많이 보는 편이에요.',
  '모르는 사람이 말을 걸면 불편해요.',
  '편두통 혹은 두통이 있어요.',
  '예전에 동전 모양으로 머리가 빠진 적이 있거나 현재 원형탈모가 있어요.',
  '성격이 예민해서 스트레스를 잘 받아요.'
      '해야 할 일을 감당 못할 때가 많아요.',
  '쉽게 잠들지 못하고 숙면을 취하지 못해요.',
  '어깨 승모근에 곰 한마리가 있는 듯 무거워요.',
  '스트레스를 받으면 많이 먹거나 자극적인 음식이 먹고 싶어요.',
  '걱정이 많고 쉽게 화를 내요.',
  '할아버지 혹은 아버지가 대머리여서 어릴 때 부터 걱정이 있었어요.',
  '아토피가 있어서 피부가 가렵고 환절기에는 더 불편해요.',
  '머리에서 떨어지는 비듬 때문에 어두운 색 상의는 피하게 돼요.',
  '발이 차서 잘 때는 수면양말을 꼭 착용해요.',
  '수술이나 질병으로 인해 약을 복용했거나 현재 복용 중이에요.',
  '야식을 먹고 난 다음날이면 얼굴이 호빵맨이 돼요.',
  '수술이나 질병으로 인해 약을 복용했거나 현재 복용 중이에요.',
  '특정 음식물에 알레르기, 두드러기 등의 거부반응이 있어요.',
  '다이어트 후 급격한 체중변화를 경험한 적이 있어요.',
  '출산한 경험이 있어요.',
  '갱년기 증상이 있어요.',
  '비가 오거나 습한 날씨에는 머리 손질이 어려워요.',
  '머리카락이 하루에 60개 이상 빠지는 거 같아요.',
  '미용사 혹은 지인들이 두피가 붉다고 한 적이 있어요.',
  '미용실에서 두피를 살짝 건드리기만 해도 아프거나 자극이 느껴져요.',
  '정수리나 뒷목에서 열이 올라오는 느낌이 들어요.',
  '맵거나 뜨거운 음식을 먹은 것도 아닌데 두피에서 땀이 나요.',
  '누가 머리카락을 만지거나 정수리에 손을 대면 부담스러워요.',
  '자고 일어나보면 두피를 긁어서 생긴 딱지가 손톱 사이에 끼어있거나 두피에서 피가 난 흔적이 있어요.',
  '거울을 볼 때면 이마가 점점 넓어지는 거 같고 정수리가 휑해보인다는 말을 가끔 들어요.',
  '샴푸를 하루라도 안하면 두피에서 냄새가 나고 기름기가 많아져요.',
];

class DiagnosisMbti extends StatefulWidget {
  const DiagnosisMbti({Key? key}) : super(key: key);

  @override
  State<DiagnosisMbti> createState() => _DiagnosisMbtiState();
}

class _DiagnosisMbtiState extends State<DiagnosisMbti> {
  double pageWidth =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

  double mobileWidth = 500;

  bool isWeb = true;

  bool first1 = false;
  bool second1 = false;
  bool third1 = false;
  bool fourth1 = false;
  bool fifth1 = false;

  bool first2 = false;
  bool second2 = false;
  bool third2 = false;
  bool fourth2 = false;
  bool fifth2 = false;

  bool first3 = false;
  bool second3 = false;
  bool third3 = false;
  bool fourth3 = false;
  bool fifth3 = false;


  @override
  Widget build(BuildContext context) {
    pageWidth = MediaQuery.of(context).size.width;
    isWeb = pageWidth > mobileWidth ? true : false;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: isWeb ? 160 : 58,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: GlobalStyle.background_gray,
              ),
              child: Center(
                child: Text(
                  '탈모 MBTI',
                  style: TextStyle(
                      fontSize: isWeb ? 20 : 14,
                      color: GlobalStyle.dark
                  ),
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: isWeb ? MediaQuery.of(context).size.height - 160 : MediaQuery.of(context).size.height - 58,
                color: GlobalStyle.white,
                child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: isWeb ? 100 : 38, horizontal: isWeb ? 0 : 20),
                            child: Column(
                              children: [
                                Text(contentsList[1],
                                  style: TextStyle(
                                      fontSize: isWeb ? 18 : 14,
                                      color: GlobalStyle.dark,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Container(height: isWeb ? 52 : 30,),
                                Row(
                                  mainAxisAlignment: isWeb ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(isWeb ? '전혀 아니다' : '비동의',
                                      style: TextStyle(
                                        color: GlobalStyle.light_purple,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0),
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              first1 = !first1;
                                              second1 = false;
                                              third1 = false;
                                              fourth1 = false;
                                              fifth1 = false;
                                            });
                                          },
                                          child: Container(
                                            width: isWeb ? 40 : 26,
                                            height: isWeb ? 40 : 26,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: GlobalStyle.light_purple,
                                                  width: isWeb ? 3 : 2,
                                                ),
                                                borderRadius: BorderRadius.circular(100)
                                            ),
                                            child: Container(
                                              margin: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  color: first1 ? GlobalStyle.light_purple : GlobalStyle.transparent,
                                                  borderRadius: BorderRadius.circular(100)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          second1 = !second1;
                                          first1 = false;
                                          third1 = false;
                                          fourth1 = false;
                                          fifth1 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6),
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: second1 ? isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          third1 = !third1;
                                          first1 = false;
                                          second1 = false;
                                          fourth1 = false;
                                          fifth1 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 28 : 26,
                                        height: isWeb ? 28 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: GlobalStyle.gray,
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: third1 ? GlobalStyle.gray : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fourth1 = !fourth1;
                                          first1 = false;
                                          second1 = false;
                                          third1 = false;
                                          fifth1 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6),
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fourth1 ? isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fifth1 = !fifth1;
                                          first1 = false;
                                          second1 = false;
                                          third1 = false;
                                          fourth1 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 40 : 26,
                                        height: isWeb ? 40 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: GlobalStyle.green,
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fifth1 ? GlobalStyle.green : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    Text(isWeb ? '매우 그렇다' : '동의',
                                      style: TextStyle(
                                        color: GlobalStyle.green,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: isWeb ? 100 : 48, horizontal: isWeb ? 0 : 20),
                            child: Column(
                              children: [
                                Text(contentsList[2],
                                  style: TextStyle(
                                      fontSize: isWeb ? 18 : 14,
                                      color: GlobalStyle.dark,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Container(height: isWeb ? 52 : 30,),
                                Row(
                                  mainAxisAlignment: isWeb ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(isWeb ? '전혀 아니다' : '비동의',
                                      style: TextStyle(
                                        color: GlobalStyle.light_purple,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0),
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              first2 = !first2;
                                              second2 = false;
                                              third2 = false;
                                              fourth2 = false;
                                              fifth2 = false;
                                            });
                                          },
                                          child: Container(
                                            width: isWeb ? 40 : 26,
                                            height: isWeb ? 40 : 26,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: GlobalStyle.light_purple,
                                                  width: isWeb ? 3 : 2,
                                                ),
                                                borderRadius: BorderRadius.circular(100)
                                            ),
                                            child: Container(
                                              margin: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  color: first2 ? GlobalStyle.light_purple : GlobalStyle.transparent,
                                                  borderRadius: BorderRadius.circular(100)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          second2 = !second2;
                                          first2 = false;
                                          third2 = false;
                                          fourth2 = false;
                                          fifth2 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6),
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: second2 ? isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          third2 = !third2;
                                          first2 = false;
                                          second2 = false;
                                          fourth2 = false;
                                          fifth2 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 28 : 26,
                                        height: isWeb ? 28 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: GlobalStyle.gray,
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: third2 ? GlobalStyle.gray : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fourth2 = !fourth2;
                                          first2 = false;
                                          second2 = false;
                                          third2 = false;
                                          fifth2 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6),
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fourth2 ? isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fifth2 = !fifth2;
                                          first2 = false;
                                          second2 = false;
                                          third2 = false;
                                          fourth2 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 40 : 26,
                                        height: isWeb ? 40 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: GlobalStyle.green,
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fifth2 ? GlobalStyle.green : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    Text(isWeb ? '매우 그렇다' : '동의',
                                      style: TextStyle(
                                        color: GlobalStyle.green,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: isWeb ? 100 : 48, horizontal: isWeb ? 0 : 20),
                            child: Column(
                              children: [
                                Text(contentsList[3],
                                  style: TextStyle(
                                      fontSize: isWeb ? 18 : 14,
                                      color: GlobalStyle.dark,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Container(height: isWeb ? 52 : 30,),
                                Row(
                                  mainAxisAlignment: isWeb ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(isWeb ? '전혀 아니다' : '비동의',
                                      style: TextStyle(
                                        color: GlobalStyle.light_purple,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0),
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              first3 = !first3;
                                              second3 = false;
                                              third3 = false;
                                              fourth3 = false;
                                              fifth3 = false;
                                            });
                                          },
                                          child: Container(
                                            width: isWeb ? 40 : 26,
                                            height: isWeb ? 40 : 26,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: GlobalStyle.light_purple,
                                                  width: isWeb ? 3 : 2,
                                                ),
                                                borderRadius: BorderRadius.circular(100)
                                            ),
                                            child: Container(
                                              margin: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  color: first3 ? GlobalStyle.light_purple : GlobalStyle.transparent,
                                                  borderRadius: BorderRadius.circular(100)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          second3 = !second3;
                                          first3 = false;
                                          third3 = false;
                                          fourth3 = false;
                                          fifth3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6),
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: second3 ? isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          third3 = !third3;
                                          first3 = false;
                                          second3 = false;
                                          fourth3 = false;
                                          fifth3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 28 : 26,
                                        height: isWeb ? 28 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: GlobalStyle.gray,
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: third3 ? GlobalStyle.gray : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fourth3 = !fourth3;
                                          first3 = false;
                                          second3 = false;
                                          third3 = false;
                                          fifth3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6),
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fourth3 ? isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fifth3 = !fifth3;
                                          first3 = false;
                                          second3 = false;
                                          third3 = false;
                                          fourth3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 40 : 26,
                                        height: isWeb ? 40 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: GlobalStyle.green,
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fifth3 ? GlobalStyle.green : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    Text(isWeb ? '매우 그렇다' : '동의',
                                      style: TextStyle(
                                        color: GlobalStyle.green,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (first1 || second1 || third1 || fourth1 || fifth1) && (first2 || second2 || third2 || fourth2 || fifth2) && (first3 || second3 || third3 || fourth3 || fifth3)
                            ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MbtiPages(contentsListIndex1: contentsList[4], contentsListIndex2: contentsList[5], contentsListIndex3: contentsList[6], ontap: (){})),
                          );
                        }
                            : () {},
                        child: Container(
                          margin: EdgeInsets.only(top: isWeb ? 100 : 40, bottom: isWeb ? 60 : 0),
                          width: isWeb ? 190 : 100,
                          height: isWeb ? 52 : 38,
                          decoration: BoxDecoration(
                              color:
                              (first1 || second1 || third1 || fourth1 || fifth1) && (first2 || second2 || third2 || fourth2 || fifth2) && (first3 || second3 || third3 || fourth3 || fifth3)
                                  ? GlobalStyle.green : GlobalStyle.gray,
                              borderRadius: BorderRadius.circular(isWeb ? 5 : 2)
                          ),
                          child: Center(
                            child: Text('다음',
                              style: TextStyle(
                                  color: GlobalStyle.white,
                                  fontSize: isWeb ? 16 : 12
                              ),
                            ),
                          ),
                        ),
                      ),
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


class MbtiPages extends StatefulWidget {
  final String contentsListIndex1;
  final String contentsListIndex2;
  final String contentsListIndex3;
  final GestureTapCallback ontap;

  MbtiPages({
    required this.contentsListIndex1,
    required this.contentsListIndex2,
    required this.contentsListIndex3,
    required this.ontap,
  });

  @override
  State<MbtiPages> createState() => _MbtiPagesState();
}

class _MbtiPagesState extends State<MbtiPages> {
  double pageWidth =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

  double mobileWidth = 500;

  bool isWeb = true;

  bool first1 = false;
  bool second1 = false;
  bool third1 = false;
  bool fourth1 = false;
  bool fifth1 = false;

  bool first2 = false;
  bool second2 = false;
  bool third2 = false;
  bool fourth2 = false;
  bool fifth2 = false;

  bool first3 = false;
  bool second3 = false;
  bool third3 = false;
  bool fourth3 = false;
  bool fifth3 = false;


  @override
  Widget build(BuildContext context) {
    pageWidth = MediaQuery.of(context).size.width;
    isWeb = pageWidth > mobileWidth ? true : false;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: isWeb ? 160 : 58,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: GlobalStyle.background_gray,
              ),
              child: Center(
                child: Text(
                  '탈모 MBTI',
                  style: TextStyle(
                      fontSize: isWeb ? 20 : 14,
                      color: GlobalStyle.dark
                  ),
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: isWeb ? MediaQuery.of(context).size.height - 160 : MediaQuery.of(context).size.height - 58,
                color: GlobalStyle.white,
                child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: isWeb ? 100 : 38, horizontal: isWeb ? 0 : 20),
                            child: Column(
                              children: [
                                Text(widget.contentsListIndex1,
                                  style: TextStyle(
                                      fontSize: isWeb ? 18 : 14,
                                      color: GlobalStyle.dark,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Container(height: isWeb ? 52 : 30,),
                                Row(
                                  mainAxisAlignment: isWeb ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(isWeb ? '전혀 아니다' : '비동의',
                                      style: TextStyle(
                                        color: GlobalStyle.light_purple,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0),
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              first1 = !first1;
                                              second1 = false;
                                              third1 = false;
                                              fourth1 = false;
                                              fifth1 = false;
                                            });
                                          },
                                          child: Container(
                                            width: isWeb ? 40 : 26,
                                            height: isWeb ? 40 : 26,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: GlobalStyle.light_purple,
                                                  width: isWeb ? 3 : 2,
                                                ),
                                                borderRadius: BorderRadius.circular(100)
                                            ),
                                            child: Container(
                                              margin: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  color: first1 ? GlobalStyle.light_purple : GlobalStyle.transparent,
                                                  borderRadius: BorderRadius.circular(100)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          second1 = !second1;
                                          first1 = false;
                                          third1 = false;
                                          fourth1 = false;
                                          fifth1 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6),
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: second1 ? isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          third1 = !third1;
                                          first1 = false;
                                          second1 = false;
                                          fourth1 = false;
                                          fifth1 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 28 : 26,
                                        height: isWeb ? 28 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: GlobalStyle.gray,
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: third1 ? GlobalStyle.gray : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fourth1 = !fourth1;
                                          first1 = false;
                                          second1 = false;
                                          third1 = false;
                                          fifth1 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6),
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fourth1 ? isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fifth1 = !fifth1;
                                          first1 = false;
                                          second1 = false;
                                          third1 = false;
                                          fourth1 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 40 : 26,
                                        height: isWeb ? 40 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: GlobalStyle.green,
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fifth1 ? GlobalStyle.green : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    Text(isWeb ? '매우 그렇다' : '동의',
                                      style: TextStyle(
                                        color: GlobalStyle.green,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: isWeb ? 100 : 48, horizontal: isWeb ? 0 : 20),
                            child: Column(
                              children: [
                                Text(widget.contentsListIndex2,
                                  style: TextStyle(
                                      fontSize: isWeb ? 18 : 14,
                                      color: GlobalStyle.dark,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Container(height: isWeb ? 52 : 30,),
                                Row(
                                  mainAxisAlignment: isWeb ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(isWeb ? '전혀 아니다' : '비동의',
                                      style: TextStyle(
                                        color: GlobalStyle.light_purple,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0),
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              first2 = !first2;
                                              second2 = false;
                                              third2 = false;
                                              fourth2 = false;
                                              fifth2 = false;
                                            });
                                          },
                                          child: Container(
                                            width: isWeb ? 40 : 26,
                                            height: isWeb ? 40 : 26,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: GlobalStyle.light_purple,
                                                  width: isWeb ? 3 : 2,
                                                ),
                                                borderRadius: BorderRadius.circular(100)
                                            ),
                                            child: Container(
                                              margin: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  color: first2 ? GlobalStyle.light_purple : GlobalStyle.transparent,
                                                  borderRadius: BorderRadius.circular(100)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          second2 = !second2;
                                          first2 = false;
                                          third2 = false;
                                          fourth2 = false;
                                          fifth2 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6),
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: second2 ? isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          third2 = !third2;
                                          first2 = false;
                                          second2 = false;
                                          fourth2 = false;
                                          fifth2 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 28 : 26,
                                        height: isWeb ? 28 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: GlobalStyle.gray,
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: third2 ? GlobalStyle.gray : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fourth2 = !fourth2;
                                          first2 = false;
                                          second2 = false;
                                          third2 = false;
                                          fifth2 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6),
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fourth2 ? isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fifth2 = !fifth2;
                                          first2 = false;
                                          second2 = false;
                                          third2 = false;
                                          fourth2 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 40 : 26,
                                        height: isWeb ? 40 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: GlobalStyle.green,
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fifth2 ? GlobalStyle.green : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    Text(isWeb ? '매우 그렇다' : '동의',
                                      style: TextStyle(
                                        color: GlobalStyle.green,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: isWeb ? 100 : 48, horizontal: isWeb ? 0 : 20),
                            child: Column(
                              children: [
                                Text(widget.contentsListIndex3,
                                  style: TextStyle(
                                      fontSize: isWeb ? 18 : 14,
                                      color: GlobalStyle.dark,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Container(height: isWeb ? 52 : 30,),
                                Row(
                                  mainAxisAlignment: isWeb ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(isWeb ? '전혀 아니다' : '비동의',
                                      style: TextStyle(
                                        color: GlobalStyle.light_purple,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0),
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              first3 = !first3;
                                              second3 = false;
                                              third3 = false;
                                              fourth3 = false;
                                              fifth3 = false;
                                            });
                                          },
                                          child: Container(
                                            width: isWeb ? 40 : 26,
                                            height: isWeb ? 40 : 26,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: GlobalStyle.light_purple,
                                                  width: isWeb ? 3 : 2,
                                                ),
                                                borderRadius: BorderRadius.circular(100)
                                            ),
                                            child: Container(
                                              margin: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  color: first3 ? GlobalStyle.light_purple : GlobalStyle.transparent,
                                                  borderRadius: BorderRadius.circular(100)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          second3 = !second3;
                                          first3 = false;
                                          third3 = false;
                                          fourth3 = false;
                                          fifth3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6),
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: second3 ? isWeb ? GlobalStyle.light_purple : GlobalStyle.light_purple.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          third3 = !third3;
                                          first3 = false;
                                          second3 = false;
                                          fourth3 = false;
                                          fifth3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 28 : 26,
                                        height: isWeb ? 28 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: GlobalStyle.gray,
                                              width: isWeb ? 3 : 2,
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: third3 ? GlobalStyle.gray : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fourth3 = !fourth3;
                                          first3 = false;
                                          second3 = false;
                                          third3 = false;
                                          fifth3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 34 : 26,
                                        height: isWeb ? 34 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6),
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fourth3 ? isWeb ? GlobalStyle.green : GlobalStyle.green.withOpacity(0.6) : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          fifth3 = !fifth3;
                                          first3 = false;
                                          second3 = false;
                                          third3 = false;
                                          fourth3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: isWeb ? 40 : 26,
                                        height: isWeb ? 40 : 26,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: GlobalStyle.green,
                                                width: isWeb ? 3 : 2
                                            ),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: fifth3 ? GlobalStyle.green : GlobalStyle.transparent,
                                              borderRadius: BorderRadius.circular(100)

                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(width: isWeb ? 106 : 0,),
                                    Text(isWeb ? '매우 그렇다' : '동의',
                                      style: TextStyle(
                                        color: GlobalStyle.green,
                                        fontSize: isWeb ? 18 : 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (first1 || second1 || third1 || fourth1 || fifth1) && (first2 || second2 || third2 || fourth2 || fifth2) && (first3 || second3 || third3 || fourth3 || fifth3)
                            ? widget.ontap
                            : () {},
                        child: Container(
                          margin: EdgeInsets.only(top: isWeb ? 100 : 40, bottom: isWeb ? 60 : 0),
                          width: isWeb ? 190 : 100,
                          height: isWeb ? 52 : 38,
                          decoration: BoxDecoration(
                              color:
                              (first1 || second1 || third1 || fourth1 || fifth1) && (first2 || second2 || third2 || fourth2 || fifth2) && (first3 || second3 || third3 || fourth3 || fifth3)
                                  ? GlobalStyle.green : GlobalStyle.gray,
                              borderRadius: BorderRadius.circular(isWeb ? 5 : 2)
                          ),
                          child: Center(
                            child: Text('다음',
                              style: TextStyle(
                                  color: GlobalStyle.white,
                                  fontSize: isWeb ? 16 : 12
                              ),
                            ),
                          ),
                        ),
                      ),
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
