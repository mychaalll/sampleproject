//reference the box
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sampleproject/utils/date_time_formatter.dart';

final _myBox = Hive.box("Schedule_Database");

class ScheduleDatabase {
  List ScheduleList = [];

  //create init default data
  void createDefaultData() {
    ScheduleList = [
      [
        'sched 1',
        '2Sit sint mollit enim cillum exercitation officia est pariatur. Proident ex id eu nostrud laborum incididunt ad sit est. Minim adipisicing nostrud enim consectetur. Veniam consectetur officia veniam est elit ullamco. Sunt ut ullamco magna incididunt dolor deserunt dolore eu duis enim. Eiusmod pariatur fugiat do veniam.',
        false,
        '12122022',
        '08:00 pm',
      ],
      [
        'sched 2',
        '1Sit sint mollit enim cillum exercitation officia est pariatur. Proident ex id eu nostrud laborum incididunt ad sit est. Minim adipisicing nostrud enim consectetur. Veniam consectetur officia veniam est elit ullamco. Sunt ut ullamco magna incididunt dolor deserunt dolore eu duis enim. Eiusmod pariatur fugiat do veniam.',
        true,
        '11192022',
        '04:00 pm',
      ],
      [
        'sched 3',
        '3Sit sint mollit enim cillum exercitation officia est pariatur. Proident ex id eu nostrud laborum incididunt ad sit est. Minim adipisicing nostrud enim consectetur. Veniam consectetur officia veniam est elit ullamco. Sunt ut ullamco magna incididunt dolor deserunt dolore eu duis enim. Eiusmod pariatur fugiat do veniam.',
        false,
        '11222022',
        '01:00 pm',
      ],
      [
        'sched 4',
        '4Sit sint mollit enim cillum exercitation officia est pariatur. Proident ex id eu nostrud laborum incididunt ad sit est. Minim adipisicing nostrud enim consectetur. Veniam consectetur officia veniam est elit ullamco. Sunt ut ullamco magna incididunt dolor deserunt dolore eu duis enim. Eiusmod pariatur fugiat do veniam.',
        false,
        '11172022',
        '05:00 pm',
      ],
    ];
    print("created");
  }

  // load data
  void loadData() {
    ScheduleList = _myBox.get("CURRENT_SCHEDULE_LIST");
  }

  //update of database
  void updateDataBase() {
    _myBox.put("CURRENT_SCHEDULE_LIST", ScheduleList);
    //debugging
    print('updated');
    for (int i = 0; i < ScheduleList.length; i++) {
      print(ScheduleList[i]);
    }
  }
}
