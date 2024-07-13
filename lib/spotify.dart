import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/utils/themes/theme.dart';
import './views/home/screens/home.dart';

class Spotify extends StatelessWidget {
  const Spotify({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      //initialBinding: ControllerBinding(),
      themeMode: ThemeMode.system,
      theme: TaiyoTheme.lightTheme,
      darkTheme: TaiyoTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
