import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  const MePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          ":me:",
          style: TextStyle(
              color: Colors.brown, fontWeight: FontWeight.w700, fontSize: 27),
        ),
      ),
    );
  }
}