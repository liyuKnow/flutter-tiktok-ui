import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          ":blush:",
          style: TextStyle(
              color: Colors.brown, fontWeight: FontWeight.w700, fontSize: 27),
        ),
      ),
    );
  }
}
