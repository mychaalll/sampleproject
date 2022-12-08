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
          floating: true,
          pinned: true,
          actions: [
            IconButton(
              onPressed: () {
                //open notif
              },
              icon: Icon(Icons.notifications,color: Colors.black,),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              color: Color(0xFFF2BA05),
              child: ListView(
                children: [
                  SizedBox(height: 56.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 180,
                      child: ListView(
                        children: [
                          SizedBox(height: 30,),
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
                      )
                    ),
                  ),
                ],
              )
            ),
            centerTitle: true,
            title: Text(
              'H O M E',
              style: TextStyle(
                
                color: Colors.black,
              ),
            ),
          ),
        ),
        //memories 
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
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
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          'Your Recent Memories',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          'See all',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
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
                    )
                  )
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFE86166),
              ),
              height: 400,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFE86166),
              ),
              height: 400,
            ),
          ),
        )
      
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
                    
                  )
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => guardianHomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text(
                  'Memories',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => guardianHomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.checklist),
                title: Text(
                  'Reminders',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => guardianHomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text(
                  'Schedules',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => guardianHomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => guardianHomePage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}