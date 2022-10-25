import 'package:flutter/material.dart';
import 'package:tiktok_ui/src/utils/posts/widgets/post_button.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String videoDescription;
  final String videoTags;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfBookmarks;
  final String numberOfShares;
  final userPost;

  const PostTemplate(
      {super.key,
      required this.username,
      required this.videoDescription,
      required this.videoTags,
      required this.numberOfLikes,
      required this.numberOfComments,
      required this.numberOfBookmarks,
      required this.numberOfShares,
      required this.userPost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // USER POST (at the very back)
          userPost,
          // USER NAME AND CAPTAIN
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '@$username',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(text: videoDescription),
                      TextSpan(
                          text: "$videoTags 🤣🤣🤣",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'EmojiOne',
                          ))
                    ]))
                  ]),
            ),
          ),

          // BUTTONS
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              alignment: const Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PostButton(
                    icon: Icons.favorite,
                    number: numberOfLikes,
                    color: Color.fromARGB(255, 243, 81, 143),
                  ),
                  PostButton(
                      icon: Icons.chat_bubble_outlined,
                      number: numberOfComments,
                      color: Colors.white),
                  PostButton(
                      icon: Icons.bookmark,
                      number: numberOfBookmarks,
                      color: Colors.white),
                  PostButton(
                      icon: Icons.send,
                      number: numberOfShares,
                      color: Colors.white),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
