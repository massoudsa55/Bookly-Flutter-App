import 'package:bookly_flutter_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBooklyItem extends StatelessWidget {
  const CustomBooklyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .2,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 214, 151, 128),
            image: DecorationImage(
              image: AssetImage(AppImages.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
