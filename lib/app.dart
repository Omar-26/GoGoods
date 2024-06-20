import 'package:GoGoods/features/authentication/screens/onboarding/onboarding.dart';
import 'package:GoGoods/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red, // Set your desired color here
      child: SafeArea(
        top: true,
        bottom: true,
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: GAppTheme.lightTheme,
          darkTheme: GAppTheme.darkTheme,
          home: const OnBoardingScreen(),
        ),
      ),
    );
  }
}