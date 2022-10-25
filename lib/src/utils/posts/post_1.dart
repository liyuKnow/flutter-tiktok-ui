import 'package:flutter/material.dart';
import 'package:tiktok_ui/src/utils/posts/widgets/post_template.dart';

class Post1 extends StatelessWidget {
  const Post1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "y_e_t_i",
      videoDescription: "Awesome tutorial for developers",
      videoTags: "#fyp #viral #trending",
      numberOfLikes: '12.6k',
      numberOfComments: '2.3k',
      numberOfBookmarks: '689',
      numberOfShares: '5.6k',
      userPost: Container(
        color: Colors.deepPurple[300],
      ),
    );
  }
}
