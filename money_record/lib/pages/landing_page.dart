import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LandingPages extends StatelessWidget {
  const LandingPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //SECTION Drawer
      endDrawer: Drawer(
        child: Column(
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
                          children: const [
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
                bottom: 30,
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
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  //NOTE Add Item
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[500],
                      minimumSize: Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ),
                      maximumSize: Size(
                        MediaQuery.of(context).size.width,
                        100,
                      ),
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.greenAccent,
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text("Add Item"),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  //NOTE Income
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[500],
                      minimumSize: Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ),
                      maximumSize: Size(
                        MediaQuery.of(context).size.width,
                        100,
                      ),
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.greenAccent,
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.south_west,
                          color: Colors.greenAccent,
                        ),
                        Text("Income"),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  //NOTE Expenditure
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[500],
                      minimumSize: Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ),
                      maximumSize: Size(
                        MediaQuery.of(context).size.width,
                        100,
                      ),
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.greenAccent,
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.north_east,
                          color: Colors.redAccent,
                        ),
                        Text("Expenditure"),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[500],
                      minimumSize: Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ),
                      maximumSize: Size(
                        MediaQuery.of(context).size.width,
                        100,
                      ),
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.greenAccent,
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.history,
                          color: Colors.white,
                        ),
                        Text("History"),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //SECTION AppBar
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
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SECTION 1: Today
                const Text(
                  "Today's Expenses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                //NOTE Stack Container
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 20,
                          bottom: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "IDR 99.000,00",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "+79.4% compared to yesterday",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 30),
                            //NOTE Stack Container
                            Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(0),
                                        ),
                                        color: Colors.grey,
                                      ),
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height: 40,
                                      child: GestureDetector(
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "More Information",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                              SizedBox(width: 25),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                size: 18,
                                                color: Colors.black54,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                //SECTION 2: Week
                const Text(
                  "This Week's Expenses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                //NOTE chart bar
              ],
            ),
          ),
        ],
      ),
    );
  }
}
