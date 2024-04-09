import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() => runApp(const WorldSkillsApp());

class WorldSkillsApp extends StatelessWidget {
  const WorldSkillsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}
