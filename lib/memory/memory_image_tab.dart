import 'package:flutter/material.dart';

class MemoryImageTab extends StatelessWidget {
  const MemoryImageTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 177, 190, 226),
            Color.fromARGB(255, 200, 204, 218),
            Color.fromARGB(255, 214, 174, 175),
            Color.fromARGB(255, 221, 170, 172),
            Color.fromARGB(255, 233, 170, 172),
            Color.fromARGB(255, 233, 148, 151),
            Color.fromARGB(255, 230, 109, 113),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 40,
                child: Text('Spare Container'),
              ),
            ),
            Expanded(
              child: Container(
                  child: GridView.builder(
                      itemCount: 25,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFE86166),
                            ),
                          ),
                        );
                      })),
            )
          ],
        ),
      ),
    );
  }
}
