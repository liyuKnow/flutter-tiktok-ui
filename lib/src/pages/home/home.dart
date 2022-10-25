import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "permissions",
          style: TextStyle(
              color: Colors.brown, fontWeight: FontWeight.w700, fontSize: 27),
        ),
      ),
    );
  }
}
