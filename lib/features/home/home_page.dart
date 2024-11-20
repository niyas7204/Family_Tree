import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ftree/core/colors.dart';
import 'package:ftree/core/white_spaces.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primeryColor3,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: SvgPicture.asset("assets/story_set/Family-cuate.svg"),
              ),
              WhiteSpaces.height20,
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppTheme.primeryColor4,
                        spreadRadius: .5,
                        blurRadius: .5,
                        blurStyle: BlurStyle.outer)
                  ],
                  color: AppTheme.primeryColor1.withOpacity(.4),
                  borderRadius: BorderRadius.circular(12),
                  // border:
                  //     Border.all(width: .5, color: AppTheme.primeryColor5)
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: AppTheme.primeryColor4,
                      ),
                      WhiteSpaces.width5,
                      Text(
                        "Create Your Family",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.primeryColor4),
                      ),
                    ],
                  ),
                )),
              ),
              WhiteSpaces.height20,
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppTheme.primeryColor4,
                        spreadRadius: .5,
                        blurRadius: .5,
                        blurStyle: BlurStyle.outer)
                  ],
                  color: AppTheme.primeryColor1.withOpacity(.4),
                  borderRadius: BorderRadius.circular(12),
                  // border:
                  //     Border.all(width: .5, color: AppTheme.primeryColor5)
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: AppTheme.primeryColor4,
                      ),
                      WhiteSpaces.width5,
                      Text(
                        "Create Another Family",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.primeryColor4),
                      ),
                    ],
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
