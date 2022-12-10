import "package:flutter/material.dart";
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
                children: [MemoryImageTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
