import 'package:flutter/material.dart';
import 'package:spotify/common/widgets/appbar/appbar.dart';
import 'package:spotify/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: TaiyoColors.linearGradient),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: TaiyoAppBar(),
      ),
    );
  }
}
