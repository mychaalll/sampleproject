import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:sampleproject/reminder/reminder_incoming_tab.dart';
import 'package:sampleproject/reminder/reminder_past_tab.dart';
import 'package:sampleproject/widgets/main_drawer.dart';

import '../create/create_reminder.dart';

class ReminderHomePage extends StatelessWidget {
  const ReminderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'R E M I N D E R  P A G E',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromARGB(255, 255, 197, 6),
          foregroundColor: Colors.black,
          centerTitle: true,
        ),
        drawer: MainDrawer(),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 255, 197, 6),
          foregroundColor: Colors.black,
          label: Text('Add Reminder'),
          icon: Icon(Icons.notification_add),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CreateReminder()));
          },
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  height: 100,
                  icon: Icon(
                    Icons.notifications_active,
                    color: Colors.black,
                    size: 40,
                  ),
                  text: 'Incoming Reminders',
                ),
                Tab(
                  height: 100,
                  icon: Icon(
                    Icons.notifications_off,
                    color: Colors.black,
                    size: 40,
                  ),
                  text: 'Past Reminders',
                ),
              ],
              labelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.w900),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ReminderIncomingTab(),
                  ReminderPastTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
