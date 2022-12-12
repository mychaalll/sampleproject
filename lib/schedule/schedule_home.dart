import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sampleproject/hive_data/Schedule_database.dart';
import 'package:sampleproject/widgets/schedule_tab_listview.dart';

import '../create/create_schedule.dart';
import '../widgets/main_drawer.dart';

class ScheduleHomePage extends StatefulWidget {
  const ScheduleHomePage({super.key});

  @override
  State<ScheduleHomePage> createState() => _ScheduleHomePageState();
}

class _ScheduleHomePageState extends State<ScheduleHomePage> {
//list for schedule title
  ScheduleDatabase db = ScheduleDatabase();
  final _myBox = Hive.box("Schedule_Database");

  @override
  void initState() {
    // if no current sched, then 1st time ever opening the app
    //create default data
    if (_myBox.get("CURRENT_SCHEDULE_LIST") == null) {
      db.createDefaultData();
      print("no saved data");
    }
    //if theres an existing data, load it
    else {
      db.loadData();
      print(db.ScheduleList);
    }
    super.initState();
  }

//event done controller
  bool eventDone = false;
//checkbox tapper
  void checkBoxTapped(bool? value, int index) {
    setState(() {
      db.ScheduleList[index][2] = value!;
    });
    db.updateDataBase();
  }

//delete schedule
  void deleteSchedule(int index) {
    setState(() {
      db.ScheduleList.removeAt(index);
      db.updateDataBase();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YOUR SCHEDULES',
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
        label: Text('Add Schedule'),
        icon: Icon(Icons.add_box),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CreateSchedule()));
        },
      ),
      body: Container(
          child: ListView.builder(
        itemCount: db.ScheduleList.length,
        itemBuilder: (context, index) {
          return ScheduleTabListView(
            scheduleTitle: db.ScheduleList[index][0],
            scheduleDetails: db.ScheduleList[index][1],
            eventDone: db.ScheduleList[index][2],
            scheduleDate: db.ScheduleList[index][3],
            scheduleTime: db.ScheduleList[index][4],
            onChanged: (value) {
              checkBoxTapped(value, index);
            },
            deleteTapped: (context) {
              deleteSchedule(index);
            },
          );
        },
      )),
    );
  }
}
