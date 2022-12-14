import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color.fromARGB(209, 238, 238, 238),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Container(
                color: Color(0xFFF2BA05),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child:(
                          Text(
                            'Welcome to \nDementia \nAssistance \nApplication',
                            textAlign: TextAlign.left,
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
                          )
                        ),
                      ),
                    ), 
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Column(children: [
                      SizedBox(height: 100),
                      Image.asset('images/laboratoryAssistant.png'),
                      ],
                      )
                    ),
                  ],
                ),
              ),
                SizedBox(height: 40),

                //emailfield
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          prefixIcon: Icon(Icons.account_box_rounded),
                          hintText: 'Username/Email',
                        )),
                  )),
                ),

                SizedBox(height: 30),

                //passwordfield
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password',
                        )),
                  )),
                ),

                SizedBox(height: 30),

                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: (Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
                SizedBox(height: 40),

                //signin button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color(0xFFF2BA05),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text('Log In',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )))),
                ),

                SizedBox(height: 40),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'No Account Yet?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Sign up now!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 241, 83, 72),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ])

              ],
          ),
        ),
      )
    );
  }
}
