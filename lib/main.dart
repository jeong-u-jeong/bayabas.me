import 'package:flutter/material.dart';
import 'package:diagnosis/page/step_1_diagnosis.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1920, 1800),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StepOne(),
      ),
    );
  }
}
