import 'package:flutter/material.dart';
import 'package:ftree/core/colors.dart';
import 'package:ftree/core/white_spaces.dart';
import 'package:ftree/features/family/presentation/widgets/connection_line.dart';

class FamilyTree extends StatefulWidget {
  const FamilyTree({super.key});

  @override
  State<FamilyTree> createState() => _FamilyTreeState();
}

class _FamilyTreeState extends State<FamilyTree> {
  final bool partner = true;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.primeryColor3,
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 40,
              left: (size.width / 2) - 140,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundColor: AppTheme.primeryColor6,
                    radius: 60,
                    child: Icon(
                      Icons.person,
                      size: 70,
                      color: AppTheme.primeryColor1,
                    ),
                  ),
                  const Positioned(
                    right: 60,
                    bottom: -10,
                    child: ConnectionLine(
                        isHorizontal: false,
                        lineLength: 10,
                        lineThickness: 2,
                        lineColor: Colors.black),
                  ),
                  Positioned(
                    right: 51,
                    bottom: -30,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 10,
                        color: AppTheme.primeryColor1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 100,
                left: (size.width / 2) - 20,
                child: const ConnectionLine(
                    isHorizontal: true,
                    lineLength: 40,
                    lineThickness: 2,
                    lineColor: Colors.black)),
            Positioned(
              top: 40,
              right: (size.width / 2) - 140,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundColor: AppTheme.primeryColor6,
                    radius: 60,
                    child: Icon(
                      Icons.person,
                      size: 70,
                      color: AppTheme.primeryColor1,
                    ),
                  ),
                  const Positioned(
                    right: 60,
                    bottom: -10,
                    child: ConnectionLine(
                        isHorizontal: false,
                        lineLength: 10,
                        lineThickness: 2,
                        lineColor: Colors.black),
                  ),
                  Positioned(
                    right: 51,
                    bottom: -30,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 10,
                        color: AppTheme.primeryColor1,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
