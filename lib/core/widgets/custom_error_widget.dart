import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    // return ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     content: Text(errMessage),
    //     backgroundColor: Colors.red,
    //   ),
    // );
  return Center(
      child: Text(
        errMessage,
        style: TextStyle(color: Colors.red, fontSize: 16),
      ),
    );
  }
}
