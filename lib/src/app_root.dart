import 'package:flutter/material.dart';
import 'package:untitled/screens/piano_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PianoScreen(),
    );
  }
}