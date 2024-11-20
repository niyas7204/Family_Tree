import 'package:flutter/material.dart';
import 'package:ftree/core/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final GlobalKey<FormState> formKey;

  final bool isObscure;
  const InputField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.isObscure = false,
      required this.formKey});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.primeryColor4),
        ),
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: AppTheme.primeryColor4.withOpacity(.5),
                blurRadius: 3,
                spreadRadius: .5,
                blurStyle: BlurStyle.outer)
          ], borderRadius: BorderRadius.circular(12)),
          height: 50,
          child: TextFormField(
            cursorErrorColor: AppTheme.primeryColor5,
            cursorColor: AppTheme.primeryColor5,
            validator: (value) {
              if (value!.isEmpty) {
                return "$hintText is missing";
              }
              return null;
            },
            controller: controller,
            decoration: const InputDecoration(
                errorStyle:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    )),
                fillColor: Colors.white,
                filled: true),
          ),
        ),
      ],
    );
  }
}
