import 'package:ktest/src/di/main_di_module.dart';
import 'package:ktest/src/presentation/ui/character_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainDIModule().configure(GetIt.I);
    return const MaterialApp(
      title: 'Test app',
      debugShowCheckedModeBanner: false,
      home: CharactersScreen(),
    );
  }
}
