import 'package:flutter/material.dart';

import '../memory/memory_home.dart';

class CreateEntryImage extends StatefulWidget {
  const CreateEntryImage({Key? key}) : super(key: key);

  @override
  State<CreateEntryImage> createState() => _CreateEntryImageState();
}

class _CreateEntryImageState extends State<CreateEntryImage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: (Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MemoryHomePage()));
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 30,
                )),
          )),
        ),
        body: SafeArea(
            child: Container(
                child: Center(
                    child: Column(children: [
          SizedBox(height: 10.0),
          //how is your day
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: (Text(
                'Nice Image you got here!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 35,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.grey,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              )),
            ),
          ),
          SizedBox(height: 20.0),
          //paragraph
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF2BA05),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_photo_alternate,
                        color: Colors.black,
                        size: 100,
                      ),
                      Text(
                        'ADD IMAGE',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          //diary title
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50,
              child: Container(
                width: 250,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      iconColor: Colors.black,
                      prefixIcon: Icon(Icons.auto_stories, size: 30),
                      border: UnderlineInputBorder(),
                      hintText: 'Enter Diary Title',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          //paragraph
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                color: Colors.white,
                child: TextFormField(
                  maxLines: 40,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(
                    fontSize: 20,
                    height: 2,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      hintText: 'What happened today?',
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          //save button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Color(0xFFF2BA05),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.save_alt,
                    size: 35,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
        ])))));
  }
}
