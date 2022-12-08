import 'package:flutter/material.dart';


import '../widgets/memory_card.dart';

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
            expandedHeight: 300,
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
              background: Container(
                  color: Color(0xFFF2BA05),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 56.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                            height: 180,
                            child: ListView(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Welcome, Guardian!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 35,
                                  ),
                                ),
                                Text(
                                  'Have a nice day!',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  )),
              centerTitle: true,
              title: Text(
                'H O M E',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          //categories
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top:25.0),
              child: Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFE86166),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.photo_album_outlined, size: 30, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              "Memories",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFE86166),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_month_outlined, size: 30, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              "Schedules",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white
                              ),
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
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFE86166),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.pending_actions_outlined, size: 30, color: Colors.white),
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
                            color: Colors.grey[600]
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                      child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
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
                            color: Colors.grey
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 80.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    left:10.0, 
                                    bottom: 10.0,
                                    ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(12.0)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.notifications_active_outlined,
                                      size: 40,
                                      color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top:12.0,
                                      left: 20.0,
                                      bottom: 12.0
                                    ),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "December 8 2022",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                              color: Colors.black
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            "Breakfast with you hehe",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.grey[600]
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    right:10.0, 
                                    bottom: 10.0,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('07:00',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Colors.grey[200],
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            height: 80.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    left:10.0, 
                                    bottom: 10.0,
                                    ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(12.0)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.notifications_active_outlined,
                                      size: 40,
                                      color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top:12.0,
                                      left: 20.0,
                                      bottom: 12.0
                                    ),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "December 8 2022",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                              color: Colors.black
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            "Lunch with you hehe",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.grey[600]
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    right:10.0, 
                                    bottom: 10.0,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('12:00',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Colors.grey[200],
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            height: 80.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    left:10.0, 
                                    bottom: 10.0,
                                    ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(12.0)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.notifications_active_outlined,
                                      size: 40,
                                      color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top:12.0,
                                      left: 20.0,
                                      bottom: 12.0
                                    ),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "December 14 2022",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                              color: Colors.black
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            "Dinner with you hehe",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.grey[600]
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    right:10.0, 
                                    bottom: 10.0,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('18:00',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Colors.grey[200],
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ),
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
                            color: Colors.grey
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFE86166),
                              borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child: Icon(Icons.date_range,
                                  size: 70,
                                  color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, 
                                    horizontal: 10.0
                                  ),
                                  child: Container(
                                    child: Text(
                                      "UPCOMING",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20.0,
                                    bottom: 20.0,
                                    right: 15.0
                                  ),
                                  child: Container(
                                    child: Text('6 Tasks',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25,
                                        color: Colors.grey[200],
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFE86166),
                              borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child: Icon(Icons.event_available,
                                  size: 70,
                                  color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, 
                                    horizontal: 10.0
                                  ),
                                  child: Container(
                                    child: Text(
                                      "COMPLETED",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20.0,
                                    bottom: 20.0,
                                    right: 15.0
                                  ),
                                  child: Container(
                                    child: Text('4 Tasks',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25,
                                        color: Colors.grey[200],
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
          
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 255, 197, 6),
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                    child: Text(
                  'L O G O',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
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
