import 'package:flutter/material.dart';

import '../widgets/memory_card.dart';
import '../widgets/upcoming_schedule_card.dart';

class guardianHomePage extends StatefulWidget {
  const guardianHomePage({Key? key}) : super(key: key);

  @override
  State<guardianHomePage> createState() => _guardianHomePageState();
}

class _guardianHomePageState extends State<guardianHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Color(0xFFE86166),
            elevation: 0,
            expandedHeight: 250,
            floating: false,
            pinned: true,
            actions: [
              IconButton(
                onPressed: () {
                  //open notif
                },
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Color(0xFFF2BA05),
                        Color(0xFFE86166),
                      ],
                      stops: [
                        0.50,
                        1,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                    child: ListView(
                      children: [
                        //items in flexappbar
                        SizedBox(
                          height: 60.0,
                        ),
                        //full container of hello guardian and icon
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFE86166),
                                  Color.fromARGB(255, 248, 73, 117),
                                  Color.fromARGB(255, 200, 73, 223),
                                  Color.fromARGB(255, 216, 55, 245)
                                ],
                                stops: [0.1, 0.3, 0.8, 1],
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Icon(
                                      Icons.account_circle_rounded,
                                      size: 75,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 20, bottom: 20),
                                    child: Container(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hello,',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Guardian',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 35,
                                              color: Colors.white),
                                        ),
                                      ],
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              centerTitle: true,
              title: Text(
                'H O M E',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          //categories
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //memories button
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE86166),
                                Color.fromARGB(255, 245, 133, 59),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        child: Row(
                          children: [
                            Icon(Icons.photo_album_outlined,
                                size: 30, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              "Memories",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    //schedules button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE86166),
                                Color.fromARGB(255, 245, 133, 59),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_month_outlined,
                                size: 30, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              "Schedules",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE86166),
                                Color.fromARGB(255, 245, 133, 59),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        child: Row(
                          children: [
                            Icon(Icons.pending_actions_outlined,
                                size: 30, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              "Reminders",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //memories
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 300,
              child: Column(
                children: [
                  //title
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Text(
                          'YOUR RECENT MEMORIES',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Text(
                          'See all',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey[600]),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                      child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //for memory cards. change values here
                      MemoryCard(),
                      MemoryCard(),
                      MemoryCard(),
                    ],
                  ))
                ],
              ),
            ),
          ),
          //UPCOMING SCHEDULE
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 380,
              child: Column(
                children: [
                  //title
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Text(
                          "UPCOMING SCHEDULE",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Text(
                          'See all',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  //schedule cards
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Expanded(
                        child: Column(
                      children: [
                        //schedule cards, change function values to change inputs
                        UpSchedCard(
                          scheduleDate: "December 7 , 2022",
                          scheduleDetails: "Breakfast with you hehe",
                          scheduleTime: "07:00",
                        ),
                        SizedBox(height: 20.0),
                        UpSchedCard(
                          scheduleDate: "December 8 , 2022",
                          scheduleDetails: "Lunch with you hehe",
                          scheduleTime: "12:00",
                        ),
                        SizedBox(height: 20.0),
                        UpSchedCard(
                          scheduleDate: "December 12 , 2022",
                          scheduleDetails: "Dinner with you hehe",
                          scheduleTime: "18:00",
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
          ),
          //YOURREMINDERS
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 300,
              child: Column(
                children: [
                  Row(
                    //title
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Text(
                          "YOUR REMINDERS",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Text(
                          'See all',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Expanded(
                        child: Column(
                      children: [
                        //upcoming tile
                        Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFE86166),
                                  Color.fromARGB(255, 245, 133, 59),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(
                                  Icons.date_range,
                                  size: 70,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 10.0),
                                child: Container(
                                  child: Text(
                                    "UPCOMING",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 20.0, right: 15.0),
                                child: Container(
                                  child: Text('6 Tasks',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25,
                                        color: Colors.grey[200],
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        //completed tile
                        Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFE86166),
                                  Color.fromARGB(255, 245, 133, 59),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(
                                  Icons.event_available,
                                  size: 70,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 10.0),
                                child: Container(
                                  child: Text(
                                    "COMPLETED",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 20.0, right: 15.0),
                                child: Container(
                                  child: Text('4 Tasks',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25,
                                        color: Colors.grey[200],
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      //drawer
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 255, 197, 6),
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                    child: Text(
                  'G e r i A s s i s',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                )),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => guardianHomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text(
                  'Memories',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => guardianHomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text(
                  'Schedules',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => guardianHomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.checklist),
                title: Text(
                  'Reminders',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => guardianHomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => guardianHomePage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
