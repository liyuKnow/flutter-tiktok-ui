import 'package:flutter/material.dart';
import 'package:tiktok_ui/src/utils/posts/widgets/post_template.dart';

class Post2 extends StatelessWidget {
  const Post2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "Quite_Coder",
      videoDescription: "Freeze any computer with one line of code",
      videoTags: "#fyp #viral #trending",
      numberOfLikes: '88.4k',
      numberOfComments: '672',
      numberOfBookmarks: '25.4k',
      numberOfShares: '3368',
      userPost: Container(
        color: Color.fromARGB(255, 114, 112, 241),
      ),
    );
  }
}
