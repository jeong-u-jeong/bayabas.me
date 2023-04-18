import 'package:diagnosis/global_assets/style.dart';
import 'package:flutter/material.dart';

double pageWidth = MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

const double mobileWidth = 700;

class StepTwo extends StatelessWidget {
  const StepTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(height: 70,),
              Contents(
                  title: '두피 건강 테스트',
                  subtitle: '문진을 통해 유전적 요인, 생활 습관, 스트레스, 두피 타입 등을 파악하여 지금 두피의 상태가 어떤지 알아볼 수 있어요.',
                  txt: '내 두피상태 진단',
                  subtxt: '문진을 통해 유전적인 요인, 생활 채턴, 스트레스, 두피타입 등을 파악하여 현재 두피건강을 진단 할 수 있어요',
                  endtxt: '탈모는 조기에 발견해 예방하는 것이 제일 중요해요. 간단한 문진으로 나의 두피 상태를 알아보세요. 바야바즈에서 제공하는 모든 콘텐츠는 진단하신 데이터를 바탕으로 전문가가 추천해 드립니다.',
                  img: 'images/default_diagnosis.png'
              ),
              Container(height: 35,),
              Contents(
                  title: '두피 타입 테스트',
                  subtitle: '두피의 상태를 문진하여 두피 성격과 두피 타입을 파악할 수 있어요.',
                  txt: '탈모MBTI',
                  subtxt: '내 두피는 어떤 성격을 가지고 있을 까요? 간단한 진단을 통해 확인해 보세요.',
                  endtxt: '이제 탈모도 MBTI로 체크할 수 있다는 사실 아시나요? 평소의 "생활 습관"과 "마음상태" 그리고 "유전/질병" 여부, 마지막으로 두피/모발 상태까지 총 40문항의 질문에 대답하면 나만의 탈모 MBTI를 알 수 있어요. 적을 알고 나를 알면 백전백승! 탈모 MBTI를 통해 챙겨야 하는 생활습관과 버려야 하는 습관을 확인하고 꼼꼼하게 관리할 수 있답니다. 바야바즈의 탈모 MBTI를 통해 내 두피와 친해지는 시간을 만들어 보세요!',
                  img: 'images/mbti_diagnosis.png'
              ),
              Container(height: 35,),
              Contents(
                  title: '두피 면적 테스트',
                  subtitle: '정수리 사진을 통해 바야바즈가 두피의 면적을 파악해줘요. 간편하고 쉽게 진단할 수 있어요.',
                  txt: '바야바즈 두피 면적 진단',
                  subtxt: '정수리 사진을 통해 바야바즈가 두피의 면적을 파악해줘요. 간편하고 쉽게 진단할 수 있어요.',
                  endtxt: '간단하게 사진을 찍어 두피 면적 진단을 할 수 있어요.',
                  img: 'images/AI_diagnosis.png'
              ),
              Container(height: 50,),
            ],
          ),

        ),
      ),
    );
  }
}



class Contents extends StatelessWidget {
  const Contents({Key? key, required this.title, required this.subtitle, required this.txt, required this.subtxt, required this.endtxt, required this.img}) : super(key: key);

  final String title, subtitle, txt, subtxt, endtxt;
  final img;

  @override
  Widget build(BuildContext context) {
    double mediaWidth(BuildContext context, double scale) => MediaQuery.of(context).size.width * scale;
    double mediaHeight(BuildContext context, double scale) => MediaQuery.of(context).size.height * scale;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Style.light_black
              ),
            ),
            Text(subtitle,
              style: TextStyle(
                fontSize: 18,
                color: Style.light_gray,
              ),
            ),
            Container(height: 25,),
            Container(
              padding: EdgeInsets.fromLTRB(40, 30, 0, 30),
              width: mediaWidth(context, 0.6),
              height: mediaHeight(context, 0.4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: const Offset(0,5),
                    )
                  ]
              ),
              child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(width: 100, height: 5, color: Style.light_purple, margin: EdgeInsets.only(bottom: 15),),
                        Text(txt, style: TextStyle(
                          fontSize: 20,
                          color: Style.light_gray,
                         ),
                        ),
                        Container(height: 10,),
                        Text(subtxt, style: TextStyle(
                          fontSize: 18,
                          color: Style.light_gray,
                         ),
                        ),
                        Container(height: 10,),
                        Text(endtxt, style: TextStyle(
                          fontSize: 16,
                          color: Style.light_gray,
                         ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(img, width: 90, height: 90,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
