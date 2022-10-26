import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  const MePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: const Icon(
              Icons.person_add,
              color: Colors.black,
            ),
            title: const Text(
              "User Name",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              )
            ]),
        body: Column(
          children: [
            // PROFILE PHOTO
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[200]),
            ),

            // USERNAME
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "@awesomeuser",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),

            // NUMBER OF FOLLOWING, FOLLoWERS, LIKES
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: const [
                        Text(
                          '37',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      Text(
                        '37',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: const [
                        Text(
                          '37',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Likes',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

            // BUTTONS ->  EDIT PROFILE, INSTA LINKS, BOOKMARKS
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(3)),
                          child: const Text(
                            "Edit Profile",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "This is the default Bio",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            // BIO
            // Row(
            //   children: [
            //     Container(
            //       padding: const EdgeInsets.all(15.0),
            //       decoration: BoxDecoration(
            //           border: Border.all(color: Colors.grey),
            //           borderRadius: BorderRadius.circular(3)),
            //       child: Row(
            //         children: const [
            //           Icon(Icons.bluetooth),
            //           Text(
            //             "Add Bio",
            //             style: TextStyle(color: Colors.black),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),

            // DEFAULT TAB CONTROLLER
            const TabBar(indicatorColor: Colors.grey, tabs: [
              Tab(
                icon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.grey,
                ),
              ),
            ]),

            // Expanded(
            //     child: TabBarView(children: [
            //   // VideosTab(),
            //   // LikedVideosTab(),
            //   // BookmarksTab(),
            // ]))
          ],
        ),
      ),
    );
  }
}
