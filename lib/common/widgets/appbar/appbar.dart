import 'package:flutter/material.dart';

class TaiyoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TaiyoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
