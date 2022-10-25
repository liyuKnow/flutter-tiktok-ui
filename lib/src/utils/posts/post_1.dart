import 'package:flutter/material.dart';
import 'package:tiktok_ui/src/utils/posts/widgets/post_buttons.dart';

class Post1 extends StatelessWidget {
  const Post1({super.key});

  @override
  Widget build(BuildContext context) {
    const favColor = true;
    return Scaffold(
      body: Stack(
        children: [
          // USER POST (at the very back)

          // USER NAME AND CAPTAIN
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '@createTokyo',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(text: "Tiktok Clone tutorial"),
                      TextSpan(
                          text: "#fyp #tech #ui_design ",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]))
                  ]),
            ),
          ),

          // BUTTONS
          PostButtons()
        ],
      ),
    );
  }
}
