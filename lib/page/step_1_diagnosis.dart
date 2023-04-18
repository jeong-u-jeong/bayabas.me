import 'package:diagnosis/global_assets/global_style.dart';
import 'package:flutter/material.dart';
import 'package:diagnosis/page/step_2_diagnosis.dart';

class StepOne extends StatelessWidget {
  const StepOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaWidth(BuildContext context, double scale) => MediaQuery.of(context).size.width * scale;
    double mediaHeight(BuildContext context, double scale) => MediaQuery.of(context).size.height * scale;

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('바야바즈!',
                style: TextStyle(
                  fontSize: 38,
                  color: GlobalStyle.light_black,
              ),),
              Text('내 두피 상태를 알려줘!',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: GlobalStyle.light_black,
                ),),
              Container(height: 40,),
              Text('바야바즈가 제공하는 두피 진단은',
                style: TextStyle(
                  fontSize: 20,
                  color: GlobalStyle.light_black,
                ),),
              Text('유전적 요인, 생활 패턴, 스트레스, 두피 타입 등을',
                style: TextStyle(
                  fontSize: 20,
                  color: GlobalStyle.light_black,
                ),),
              Text('파악하여 현재 두피의 상태와 건강을 진단해요.',
                style: TextStyle(
                  fontSize: 20,
                  color: GlobalStyle.light_black,
                ),),
              Container(height: 25,),
              Text('두피 질병 및 질환은 의료기관을 방문 해 주세요.',
                style: TextStyle(
                  fontSize: 17,
                  color: GlobalStyle.intro_txt_gray,
                ),),
              Container(height: 30,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StepTwo()),
                  );
                },
                child: Container(
                  width: mediaWidth(context, 0.3),
                  height: mediaHeight(context, 0.07),
                  decoration: BoxDecoration(
                    color: GlobalStyle.white,
                    border: Border.all(
                      width: 1,
                      color: GlobalStyle.intro_border_gray,
                    )
                  ),
                  child: Center(child: Text('진단 구경하기',
                    style: TextStyle(
                      fontSize: 16,
                      color: GlobalStyle.intro_txt_gray,
                    ),),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
