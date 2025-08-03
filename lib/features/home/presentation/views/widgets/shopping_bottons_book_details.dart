import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/models/book_model/book_model.dart';
import 'custom_botton_widget.dart';

class ShoppingButtonsBookDetails extends StatelessWidget {
  const ShoppingButtonsBookDetails({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButtonWidget(
            text: 'Free',
            backgroundColor: const Color(0xffE5EBF1),
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            onPressed: () {
              final isAvailable = bookModel.saleInfo!.isEbook;
              print("isAvailable = $isAvailable");
              if (isAvailable == true) {
                final Uri url = Uri.parse(bookModel.saleInfo!.buyLink!);
                print("Url buyLink = $url");
                _launchUrl(url);
              }
            },
          ),
        ),
        Expanded(
          child: CustomButtonWidget(
            text: 'Preview',
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            onPressed: () {
              final Uri url = Uri.parse(bookModel.volumeInfo.previewLink ?? '');
              _launchUrl(url);
            },
          ),
        ),
      ],
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
