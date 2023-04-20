import 'package:diagnosis/global_assets/global_style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DiagnosisArea extends StatefulWidget {
  const DiagnosisArea({Key? key}) : super(key: key);

  @override
  State<DiagnosisArea> createState() => _DiagnosisAreaState();
}

class _DiagnosisAreaState extends State<DiagnosisArea> {
  bool female = false;
  bool male = false;

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
                height: 160.h,
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
             Column(
              children: [
               Center(
                 child: Column(
                   children: [
                       Text('정확한 두피 면적 계산을 위해 성별을 입력해 주세요.', style: TextStyle(
                       fontSize: 4.sp,
                       fontWeight: FontWeight.bold,
                     ),),
                     Container(height: 10.h,),
                      Text('바야바즈 두피면적 진단은 성별과 나이대를 토대로 면적이 계산되요.', style: TextStyle(
                        fontSize: 4.sp,
                      ),),
                    ],
                  ),
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
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: male ? GlobalStyle.green :GlobalStyle.white,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: GlobalStyle.light_gray.withOpacity(0.1),
                            ),
                          ),
                          child: Center(
                              child: Text('남자', style: TextStyle(
                                fontSize: 4.sp,
                                color: male ? GlobalStyle.white : GlobalStyle.light_gray,
                              ),)
                          ),
                        ),
                      ),
                      Container(height: 15.h,),
                      GestureDetector(
                        onTap:  () {
                          setState(() {
                            female=!female;
                            male=false;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: female ? GlobalStyle.green :GlobalStyle.white,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: GlobalStyle.light_gray.withOpacity(0.1),
                            ),
                          ),
                          child: Center(
                              child: Text('여자', style: TextStyle(
                                fontSize: 4.sp,
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
                                  fontSize: 4.sp
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                 ),
                ],
               ),
              ],
            ),
          ),
      )
      :
      SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 54,
                color: GlobalStyle.background_gray,
                child: Center(
                  child: Text('두피 면적 테스트',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: GlobalStyle.dark
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.w, 130.h, 20.w, 0),
                child: Column(
                  children: [
                    Text('정확한 두피 면적 계산을 위해 성별을 입력해주세요.', style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),),
                    Container(height: 26.h,),
                    Text('바야바즈 두피면적 진단은 성별과 나이대를 토대로 면적이 계산되요.', style: TextStyle(
                      fontSize: 17.sp,
                    ),),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: male ? GlobalStyle.green :GlobalStyle.white,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: GlobalStyle.light_gray.withOpacity(0.1),
                            ),
                          ),
                          child: Center(
                              child: Text('남자', style: TextStyle(
                                fontSize: 13.sp,
                                color: male ? GlobalStyle.white : GlobalStyle.light_gray,
                              ),)
                          ),
                        ),
                      ),
                      Container(height: 15.h,),
                      GestureDetector(
                        onTap:  () {
                          setState(() {
                            female=!female;
                            male=false;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: female ? GlobalStyle.green :GlobalStyle.white,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: GlobalStyle.light_gray.withOpacity(0.1),
                            ),
                          ),
                          child: Center(
                              child: Text('여자', style: TextStyle(
                                fontSize: 13.sp,
                                color: female ? GlobalStyle.white : GlobalStyle.light_gray,
                              ),)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 110.h,),
                  width: 100.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: male || female ? GlobalStyle.green : GlobalStyle.gray,
                      borderRadius: BorderRadius.circular(5.r)
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
    );
  }
}
