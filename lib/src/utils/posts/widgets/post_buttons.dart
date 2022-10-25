import 'package:flutter/material.dart';
import 'package:tiktok_ui/src/utils/posts/widgets/post_button.dart';

class PostButtons extends StatelessWidget {
  const PostButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        alignment: const Alignment(1, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            PostButton(
              icon: Icons.favorite,
              number: '1.2M',
              color: Color.fromARGB(255, 243, 81, 143),
            ),
            PostButton(
                icon: Icons.chat_bubble_outlined,
                number: '23.4k',
                color: Colors.white),
            PostButton(
                icon: Icons.bookmark, number: '83.4k', color: Colors.white),
            PostButton(icon: Icons.send, number: '102.3k', color: Colors.white),
          ],
        ),
      ),
    );
  }
}
