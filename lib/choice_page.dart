import 'package:flutter/material.dart';

class ChoicePage extends StatefulWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15, 
              right: 15,
            ),
            child: IconButton(
              onPressed: () => print("Search Pressed"), 
              icon: Icon(Icons.edit, color: Colors.black, size: 30,)
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 30),
                //who are you
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: (Text(
                      'Who Are You?',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
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
                SizedBox(height: 70),
                //Patient
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                    color: Color(0xFFE86166),
                    borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.elderly,
                          color: Colors.black,
                          size: 100,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'PATIENT',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Color.fromARGB(255, 58, 58, 58),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                SizedBox(height: 30),
                //guardian
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                    color: Color(0xFFF2BA05),
                    borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.sports_kabaddi,
                          color: Colors.black,
                          size: 100,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'GUARDIAN',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Color.fromARGB(255, 58, 58, 58),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ]
            )
          ),
        )
      )
    );
  }
}
// children: [
//               SizedBox(height: 50),
//               Container(
//                 color: Colors.red,
//                 child: Container(
                  
//                     color: Colors.blue,
//                     child: Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: (Text(
//                         'Who Are You?',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w900,
//                           fontSize: 30,
//                           shadows: [
//                             Shadow(
//                               blurRadius: 10.0,
//                               color: Colors.grey,
//                               offset: Offset(5.0, 5.0),
//                             ),
//                           ],
//                         ),
//                       )),
//                     ),
//                   ),
//               ),
//               SizedBox(height: 50),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 70.0),
//                 child: Container(
//                   color: Colors.red,
//                   child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Column(
//                         children: [
//                           Icon(
//                             Icons.edit,
//                             color: Colors.black,
//                             size: 30,
//                           ),
//                           Text(
//                             'PATIENT',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ],
//                       )),
//                 ),
//               ),
//             ]
