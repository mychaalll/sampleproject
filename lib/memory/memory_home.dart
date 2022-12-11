import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
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
          overlayOpacity: 0.4,
          spacing: 12,
          children: [
            SpeedDialChild(
              child: Icon(
                Icons.add_a_photo,
                color: Colors.white,
              ),
              label: 'Add Image',
              backgroundColor: Colors.grey[800],
              // onTap: () => add image function
            ),
            SpeedDialChild(
              child: Icon(Icons.note_add, color: Colors.white),
              label: 'Add Diary Entry',
              backgroundColor: Colors.grey[800],
              // onTap: () => add diary function
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
                    size: 30,
                  ),
                  text: 'I M A G E S',
                ),
                Tab(
                  height: 70,
                  icon: Icon(
                    Icons.menu_book,
                    color: Colors.black,
                    size: 30,
                  ),
                  text: 'D I A R Y',
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
