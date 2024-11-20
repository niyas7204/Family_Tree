import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ftree/features/add_person/presentation/widgets/drop_down_button.dart';
import 'package:ftree/core/colors.dart';
import 'package:ftree/core/white_spaces.dart';
import 'package:ftree/features/add_person/presentation/widgets/text_field.dart';

class AddMember extends StatefulWidget {
  const AddMember({super.key});

  @override
  State<AddMember> createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
  final TextEditingController nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primeryColor3,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          WhiteSpaces.height10,
          DottedBorder(
              radius: const Radius.circular(12),
              borderType: BorderType.RRect,
              color: AppTheme.primeryColor4,
              child: SizedBox(
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.image,
                          size: 50, color: AppTheme.primeryColor4),
                      WhiteSpaces.height10,
                      Text(
                        "Select Image",
                        style: TextStyle(
                            fontSize: 20,
                            color: AppTheme.primeryColor4.withOpacity(.5)),
                      ),
                    ],
                  ),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          InputField(
              controller: nameController, hintText: "Name", formKey: formKey),
          WhiteSpaces.height10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 100,
                child: InputField(
                    controller: nameController,
                    hintText: "Age",
                    formKey: formKey),
              ),
              WhiteSpaces.width20,
              const GenderDopdown()
            ],
          ),
          WhiteSpaces.height10,
          InputField(
              controller: nameController,
              hintText: "District",
              formKey: formKey),
          WhiteSpaces.height10,
          InputField(
              controller: nameController, hintText: "Place", formKey: formKey),
          WhiteSpaces.height10,
          InputField(
              controller: nameController, hintText: "Phone", formKey: formKey),
          WhiteSpaces.height20,
          WhiteSpaces.height10,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFABC4AA)
                    // AppTheme.primeryColor1
                    ),
                child: const Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ]),
      )),
    );
  }
}
