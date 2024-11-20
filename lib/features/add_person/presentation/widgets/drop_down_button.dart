import 'package:flutter/material.dart';
import 'package:ftree/core/colors.dart';

class GenderDopdown extends StatefulWidget {
  const GenderDopdown({super.key});

  @override
  State<GenderDopdown> createState() => _GenderDopdownState();
}

class _GenderDopdownState extends State<GenderDopdown> {
  String gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gender",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppTheme.primeryColor4),
        ),
        Container(
          height: 50,
          width: 100,
          padding: const EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: AppTheme.primeryColor4.withOpacity(.5),
                    blurRadius: 3,
                    spreadRadius: .5,
                    blurStyle: BlurStyle.outer)
              ],
              borderRadius: BorderRadius.circular(12)),
          child: DropdownButton(
            underline: const SizedBox(),
            focusColor: Colors.white,
            borderRadius: BorderRadius.circular(12),
            value: gender,
            items: [
              DropdownMenuItem(
                value: "Male",
                child: const Text("Male"),
                onTap: () {
                  setState(() {
                    gender = "Male";
                  });
                },
              ),
              DropdownMenuItem(
                value: "Female",
                onTap: () {
                  setState(() {
                    gender = "Female";
                  });
                },
                child: const Text("Female"),
              )
            ],
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
