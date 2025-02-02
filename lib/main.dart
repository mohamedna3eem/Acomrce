import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'CustemWidget/bloc/blocObserver.dart';
import 'Di/di.dart';
import 'SplashScreeen/SplashScreen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  configureDependencies();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
    builder: (_ , child) {
    return  MaterialApp(
        initialRoute: SplashScreen.routename,
        routes:
        {
          SplashScreen.routename: (context)=>SplashScreen(),
      
        } ,
      );}
    );
  }
}

