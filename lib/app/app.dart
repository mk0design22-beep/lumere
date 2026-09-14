import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lumere_abaya/app/theme.dart';
import 'package:lumere_abaya/features/splash/splash_screen.dart';

class LumereApp extends StatelessWidget {
  const LumereApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      title: 'LUMERE ABAYA',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      home: const SplashScreen(),
    );
  }
}
