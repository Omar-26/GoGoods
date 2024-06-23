import 'package:GoGoods/features/authentication/screens/onboarding/onboarding.dart';
import 'package:GoGoods/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: GAppTheme.lightTheme,
      darkTheme: GAppTheme.darkTheme,

      home: Builder(
        builder: (context) => Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top), // Add this
          child: const OnBoardingScreen(),
        ),
      ),
    );
  }
}