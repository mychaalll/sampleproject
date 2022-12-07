import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // test committ
      backgroundColor: Color.fromARGB(209, 238, 238, 238),
      body: SafeArea(
        child: Container(
          child: Center(
            child: ListView(
              children: [
                Container(
                  color: Colors.red,
                  child: Image.asset(
                    'images/Dilemma.png',
                    height: 600,
                    
                  ),
                ),
                SizedBox(height: 30.0),
              ],
            ),
          ),
        )
      )
    );
  }
}