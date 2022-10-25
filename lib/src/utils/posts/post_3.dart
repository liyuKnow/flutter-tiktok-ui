import 'package:flutter/material.dart';
import 'package:tiktok_ui/src/utils/posts/widgets/post_template.dart';

class Post3 extends StatelessWidget {
  const Post3({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "Dollyholly86",
      videoDescription: "Derik id going too far :woman:",
      videoTags: "#derek #dollyholly86",
      numberOfLikes: '12.6k',
      numberOfComments: '2.3k',
      numberOfBookmarks: '689',
      numberOfShares: '5.6k',
      userPost: Container(
        color: Color.fromARGB(255, 203, 238, 157),
      ),
    );
  }
}
