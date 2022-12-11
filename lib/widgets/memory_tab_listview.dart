import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MemoryTabListView extends StatelessWidget {
  final String diaryTitle;

  MemoryTabListView({required this.diaryTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Slidable(
        startActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: ((context) {
                //edit
              }),
              backgroundColor: Colors.blue,
              icon: Icons.edit_note,
              label: 'Edit',
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            )
          ],
        ),
        endActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: ((context) {
                //delete
              }),
              icon: Icons.delete_forever,
              label: 'Delete',
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    //1st column - icon and title
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.drive_file_rename_outline,
                            size: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5.0),
                            child: Container(
                              width: 5,
                              height: 50,
                              color: Colors.black,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              diaryTitle,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                    //2nd Column -  diary details
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Container(
                          child: Container(
                            child: Text(
                                'Laborum duis ad consequat ad aliqua qui incididunt nulla aute. Elit Lorem qui enim ea enim commodo non consectetur commodo sunt irure. Ad nisi sit irure adipisicing irure officia.',
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                          ),
                        ),
                      ),
                    ),
                    //3rd Column - view details
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xFFE86166),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text('View Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
