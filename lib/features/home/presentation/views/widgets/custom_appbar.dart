import 'package:bookly_flutter_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AppImages.splashLogo,
            height: 20.0, // Adjust size as needed
          ), // Adjust size as needed
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 24.0),
            onPressed: () {
              // Handle search button press
            },
          ),
        ],
      ),
    );
  }
}
