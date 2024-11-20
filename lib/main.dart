import 'package:flutter/material.dart';
import 'package:ftree/features/add_person/presentation/pages/add_member.dart';
import 'package:ftree/features/family/presentation/pages/family_tree.dart';
import 'package:ftree/features/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const FamilyTree());
  }
}
