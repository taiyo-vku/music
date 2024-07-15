import 'package:flutter/material.dart';

class TaiyoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TaiyoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://www.vpopwire.com/wp-content/uploads/2020/07/son-tung-mtp-no-longer-singer-at-30-vpop.jpg'
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
