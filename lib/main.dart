import 'package:flutter/material.dart';
import 'package:diagnosis/page/step_1_diagnosis.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 890),
      builder: (context, child) => MaterialApp(
        title: 'bayabas',
        debugShowCheckedModeBanner: false,
        home: StepOne(),
      ),
    );
  }
}
