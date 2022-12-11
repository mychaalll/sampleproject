import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:sampleproject/create/create_entry_diary.dart';
import 'package:sampleproject/create/create_entry_image.dart';
import 'package:sampleproject/memory/memory_diary_tab.dart';
import 'package:sampleproject/memory/memory_image_tab.dart';
import 'package:sampleproject/widgets/main_drawer.dart';

class MemoryHomePage extends StatelessWidget {
  const MemoryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'M E M O R Y  P A G E',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromARGB(255, 255, 197, 6),
          foregroundColor: Colors.black,
          centerTitle: true,
        ),
        drawer: MainDrawer(),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          backgroundColor: Color.fromARGB(255, 255, 197, 6),
          foregroundColor: Colors.black,
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          spacing: 12,
          children: [
            SpeedDialChild(
              child: Icon(
                Icons.add_a_photo,
                color: Colors.white,
              ),
              label: 'Add Image',
              backgroundColor: Colors.grey[800],

              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CreateEntryImage()));
              },
              // onTap: () => add image function
            ),
            SpeedDialChild(
              child: Icon(Icons.note_add, color: Colors.white),
              label: 'Add Diary Entry',
              backgroundColor: Colors.grey[800],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CreateEntryDiary()));
              },
            )
          ],
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  height: 100,
                  icon: Icon(
                    Icons.collections,
                    color: Colors.black,
                    size: 40,
                  ),
                  text: 'IMAGES',
                ),
                Tab(
                  height: 100,
                  icon: Icon(
                    Icons.my_library_books,
                    color: Colors.black,
                    size: 40,
                  ),
                  text: 'DIARY',
                ),
              ],
              labelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.w900),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  MemoryImageTab(),
                  MemoryDiaryTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
