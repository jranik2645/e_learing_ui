import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? width;
  void Function()? onTap;
   CustomButton({super.key, required this.title, required this.width, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
        onTap: onTap,
      child: Container(
          width: width ?? size.width * .9,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
        decoration: BoxDecoration(
            color: AppColor.PriamyColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: AppColor.PriamyColor.withOpacity(0.6),
                  blurRadius: 6,
                  spreadRadius: 5,
                  offset: Offset(3, 4))
            ]),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,

            ),
          ),

        ),
      ),
    );
  }
}
