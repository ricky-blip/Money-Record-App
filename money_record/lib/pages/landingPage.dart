import 'dart:ui';

import 'package:flutter/material.dart';

class LandingPages extends StatelessWidget {
  const LandingPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        child: ListView(
          children: [
            //NOTE Column 1
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 50,
                    bottom: 20,
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://picsum.photos/200/300",
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "User",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("user@mail.com"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //NOTE Button Logout
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 180,
                top: 0,
                bottom: 50,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    // fixedSize: Size(70, 56),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width,
                      40,
                    ),
                    maximumSize: Size(
                      MediaQuery.of(context).size.width,
                      60,
                    ),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {},
                  child: Text("Logout"),
                ),
              ),
            ),
            ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.greenAccent),
        elevation: 0,
        backgroundColor: Colors.white,
        //NOTE Text
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi,"),
            Text("User"),
          ],
        ),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        //NOTE Icon Profile
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            foregroundColor: Colors.amber,
            backgroundColor: Colors.grey[400],
            backgroundImage: NetworkImage("https://picsum.photos/200/300"),
          ),
        ),
        //NOTE DrawMenu
        // actions: [
        //   Builder(
        //     builder: (context) {
        //       return IconButton(
        //         icon: Icon(Icons.more_vert),
        //         onPressed: () {
        //           Scaffold.of(context).openEndDrawer();
        //         },
        //       );
        //     },
        //   ),
        // ],
      ),
    );
  }
}
