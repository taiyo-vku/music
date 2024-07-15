import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify/common/widgets/appbar/appbar.dart';
import 'package:spotify/utils/constants/colors.dart';

import '../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: TaiyoColors.linearGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const TaiyoAppBar(),
        // TODO : Body
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
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
                    const SizedBox(height: 5),
                    const SizedBox(height: TaiyoSizes.spaceBtwSections),

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
            ],
          ),
        ),
      ),
    );
  }
}
