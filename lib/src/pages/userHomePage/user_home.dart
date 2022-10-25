import 'package:flutter/material.dart';
import 'package:tiktok_ui/src/utils/posts/posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          Post1(),
          Post2(),
          Post3(),
        ],
      ),
    );
  }
}
