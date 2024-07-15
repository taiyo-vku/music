import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class TaiyoBottomNavigation extends StatelessWidget {
  const TaiyoBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: TaiyoColors.white,
      unselectedItemColor: Colors.white24,
      backgroundColor: Colors.transparent,
      items: const [
        BottomNavigationBarItem(icon: Icon(Iconsax.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Iconsax.heart), label: ''),
        BottomNavigationBarItem(icon: Icon(Iconsax.play), label: ''),
        BottomNavigationBarItem(icon: Icon(Iconsax.user), label: ''),
      ],
    );
  }
}
