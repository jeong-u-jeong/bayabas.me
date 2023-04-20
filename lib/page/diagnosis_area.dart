import 'package:diagnosis/global_assets/global_style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DiagnosisArea extends StatelessWidget {
  const DiagnosisArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Get.width > 414
      ? SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 160,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: GlobalStyle.background_gray,
                ),
                child: Center(
                  child: Text(
                    '두피 면적 테스트',
                    style: TextStyle(
                        fontSize: 4.sp,
                        color: GlobalStyle.dark
                    ),
                  ),
                ),
              ),
              Container(height: 30.w,),
              OneTest(),
            ],
          ),
        ),
      )
      :
      Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: GlobalStyle.transparent,
          leading: Icon(Icons.arrow_back_ios_new_rounded, color: GlobalStyle.gray,),
        ),
        body: Column(
          children: [

          ],
        ),
      ),
    );
  }
}


class TabTitle extends StatelessWidget {
  const TabTitle({Key? key, required this.tabtitle, required this.subtitle}) : super(key: key);

  final String tabtitle, subtitle;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(tabtitle, style: TextStyle(
            fontSize: 4.sp,
            fontWeight: FontWeight.bold,
          ),),
          Text(subtitle, style: TextStyle(
            fontSize: 4.sp,
          ),),
        ],
      ),
    );
  }
}


class OneTest extends StatefulWidget {
  const OneTest({Key? key}) : super(key: key);

  @override
  State<OneTest> createState() => _OneTestState();
}

class _OneTestState extends State<OneTest> {
  bool female = false;
  bool male = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabTitle(
            tabtitle: '정확한 두피 면적 계산을 위해 성별을 입력해 주세요.',
            subtitle: '바야바즈 두피면적 진단은 성별과 나이대를 토대로 면적이 계산되요.'
        ),
        Container(
          width: 100.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 30.h,),
              GestureDetector(
                onTap:  () {
                  setState(() {
                    male=!male;
                    female=false;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: male ? GlobalStyle.green :GlobalStyle.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: GlobalStyle.light_gray.withOpacity(0.1),
                    ),
                  ),
                  child: Center(
                      child: Text('남자', style: TextStyle(
                        fontSize: 16,
                        color: male ? GlobalStyle.white : GlobalStyle.light_gray,
                      ),)
                  ),
                ),
              ),
              Container(height: 15,),
              GestureDetector(
                onTap:  () {
                  setState(() {
                    female=!female;
                    male=false;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: female ? GlobalStyle.green :GlobalStyle.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: GlobalStyle.light_gray.withOpacity(0.1),
                      ),
                  ),
                  child: Center(
                      child: Text('여자', style: TextStyle(
                        fontSize: 16,
                        color: female ? GlobalStyle.white : GlobalStyle.light_gray,
                      ),)
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  margin: EdgeInsets.only(top: 120.h,),
                  width: 38.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: male || female ? GlobalStyle.green : GlobalStyle.gray,
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
          ),
        ),
      ],
    );
  }
}





class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);


  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  // final List<String> age = ['10대', '20대', '30대', '40대', '50대', '60대 이상'];
  // final List<bool> one = [false, false, false, false, false, false];

  bool one = false;
  bool two = false;
  bool three = false;
  bool four = false;
  bool five = false;
  bool six = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabTitle(
            tabtitle: '정확한 두피 면적 계산을 위해 나이대를 입력해 주세요.',
            subtitle: '바야바즈 두피면적 진단은 성별과 나이대를 토대로 면적이 계산돼요.'
        ),
        Container(height: 30,),
        Container(
          width: 500,
          height: 200,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
              childAspectRatio: 7.5/1.7,
            ),
            children: [
              // for(var i=0; i<one.length; i++)
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        one=!one;
                        two=false;
                        three=false;
                        four=false;
                        five=false;
                        six=false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: one ? GlobalStyle.green : GlobalStyle.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: GlobalStyle.light_gray.withOpacity(0.1),
                          ),
                      ),
                      child: Center(
                        child: Text('10대',
                          style: TextStyle(
                            fontSize: 16,
                            color: one ? GlobalStyle.white : GlobalStyle.light_gray,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        two=!two;
                        one=false;
                        three=false;
                        four=false;
                        five=false;
                        six=false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: two ? GlobalStyle.green : GlobalStyle.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: GlobalStyle.light_gray.withOpacity(0.1),
                          ),
                      ),
                      child: Center(
                        child: Text('20대',
                          style: TextStyle(
                            fontSize: 16,
                            color: two ? GlobalStyle.white : GlobalStyle.light_gray,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        three=!three;
                        one=false;
                        two=false;
                        four=false;
                        five=false;
                        six=false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: three ? GlobalStyle.green : GlobalStyle.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: GlobalStyle.light_gray.withOpacity(0.1),
                          ),
                      ),
                      child: Center(
                        child: Text('30대',
                          style: TextStyle(
                            fontSize: 16,
                            color: three ? GlobalStyle.white : GlobalStyle.light_gray,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        four=!four;
                        one=false;
                        two=false;
                        three=false;
                        five=false;
                        six=false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: four ? GlobalStyle.green : GlobalStyle.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: GlobalStyle.light_gray.withOpacity(0.1),
                          ),
                      ),
                      child: Center(
                        child: Text('40대',
                          style: TextStyle(
                            fontSize: 16,
                            color: four ? GlobalStyle.white : GlobalStyle.light_gray,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        five=!five;
                        one=false;
                        two=false;
                        three=false;
                        four=false;
                        six=false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: five ? GlobalStyle.green : GlobalStyle.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: GlobalStyle.light_gray.withOpacity(0.1),
                          ),
                      ),
                      child: Center(
                        child: Text('50대',
                          style: TextStyle(
                            fontSize: 16,
                            color: five ? GlobalStyle.white : GlobalStyle.light_gray,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        six=!six;
                        one=false;
                        two=false;
                        three=false;
                        four=false;
                        five=false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: six ? GlobalStyle.green : GlobalStyle.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: GlobalStyle.light_gray.withOpacity(0.1),
                          ),
                      ),
                      child: Center(
                        child: Text('60대 이상',
                          style: TextStyle(
                            fontSize: 16,
                            color: six ? GlobalStyle.white : GlobalStyle.light_gray,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}






class ThreeTest extends StatelessWidget {
  const ThreeTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabTitle(
            tabtitle: 'AI 두피 면적 계산을 위한 사진을 등록해주세요.',
            subtitle: '가이드에 근접할 수록 AI의 정확도가 높아져요.'
        ),
        Container(height: 30,),
        Image.asset('images/best.png', width: 600, height: 300,),
        Container(height: 50,),
        DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(12),
          padding: EdgeInsets.all(6),
          color: GlobalStyle.gray,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: Container(
              width: 600,
              height: 150,
              color: GlobalStyle.white,
              child: Icon(Icons.upload_file_outlined, color: GlobalStyle.gray, size: 50,),
            ),
          ),
        )
      ],
    );
  }
}
