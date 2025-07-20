import 'package:flutter/material.dart';

import 'custom_botton_widget.dart';

class ShoppingButtonsBookDetails extends StatelessWidget {
  const ShoppingButtonsBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonHeight = MediaQuery.of(context).size.height * 0.07;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Expanded(
        child: SizedBox(
          height: buttonHeight,
          width: double.infinity,
          child: Row(
            children: [
              CustomButtonWidget(
                text: 'Buy Now',
                backgroundColor: const Color(0xffE5EBF1),
                textColor: Colors.black,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                onPressed: () {
                  // TODO: Implement Buy Now action
                },
              ),
              CustomButtonWidget(
                text: 'Add to Cart',
                backgroundColor: const Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                onPressed: () {
                  // TODO: Implement Add to Cart action
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
