// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SocailButton extends StatelessWidget {
  const SocailButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.buttonColor,
    required this.image,
    required this.lableColor,
  });

  final String label;
  final VoidCallback? onTap;
  final dynamic buttonColor;
  final dynamic image;
  final dynamic lableColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(12),
          ),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  width: 25,
                ),
                SizedBox(width: 33),
                Text(
                  label,
                  style: TextStyle(
                      color: lableColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
