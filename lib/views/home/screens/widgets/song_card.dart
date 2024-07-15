import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify/utils/constants/colors.dart';

import '../../models/song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.songs,
  });

  final Song songs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                    songs.coverUrl,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.4,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
                color: Colors.white.withOpacity(0.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      songs.title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: TaiyoColors.primary,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      songs.description,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: TaiyoColors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.play,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
