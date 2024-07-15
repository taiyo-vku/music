import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify/common/widgets/appbar/appbar.dart';
import 'package:spotify/common/widgets/bottom/bottom_navigation.dart';
import 'package:spotify/utils/constants/colors.dart';

import '../../../utils/constants/sizes.dart';
import '../models/song_model.dart';
import 'widgets/song_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    return Container(
      decoration: const BoxDecoration(gradient: TaiyoColors.linearGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const TaiyoAppBar(),
        // TODO : Body
        body: SingleChildScrollView(
          child: Column(
            children: [
              // TODO : Discover Music
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome',
                        style: Theme.of(context).textTheme.bodyLarge),
                    Text(
                      'Enjoy your favourite music',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: TaiyoSizes.spaceBtwItems),
                    //const SizedBox(height: TaiyoSizes.spaceBtwSections),

                    // TODO :FORM SEARCH
                    TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        filled: true,
                        fillColor: TaiyoColors.white,
                        hintText: 'Search',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.grey.shade400),
                        prefixIcon: Icon(Iconsax.search_normal,
                            color: Colors.grey.shade400),
                      ),
                    ),
                  ],
                ),
              ),

              // TODO : Section Header
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Trending Music',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View More',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20),
              // TODO : Song Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: songs.length,
                      itemBuilder: (context, index) {
                        return SongCard(songs: songs[index]);
                      }),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const TaiyoBottomNavigation(),
      ),
    );
  }
}
