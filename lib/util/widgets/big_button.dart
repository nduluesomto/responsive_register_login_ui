import 'package:flutter/material.dart';

import '../colors.dart';

class BigButton extends StatelessWidget {
  final String text;

  const BigButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
          color: AppColor.bigButton, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      )),
    );
  }
}
