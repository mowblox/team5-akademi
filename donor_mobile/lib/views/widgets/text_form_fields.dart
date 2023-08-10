// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FluxTextField extends StatelessWidget {
  const FluxTextField({
    super.key,
    required this.hintText,
    required this.onChanged,
    required this.keyBoard,
   
    required this.validator,
    required this.icon,
    required this.title,
    required this.obscure,
    required this.iconTap,
    required this.textCapital,
  });
  final ValueChanged<String>? onChanged;

  final String hintText;
  final dynamic keyBoard;
  final dynamic validator;
  final Widget icon;
  final String title;
  final dynamic obscure;
  final VoidCallback iconTap;
  final dynamic textCapital;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(151, 150, 161, 1),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TextFormField(
          textCapitalization: textCapital,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 22, vertical: 22),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.grey[200],
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(196, 196, 196, 1),
              ),
              suffixIcon: GestureDetector(
                onTap: iconTap,
                child: icon,
              ),
              suffixIconColor: Color.fromRGBO(208, 210, 209, 1)),
          validator: validator,
          onChanged: onChanged,
          keyboardType: keyBoard,
          obscureText: obscure,
        ),
      ],
    );
  }
}
