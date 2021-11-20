import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {


      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

    backgroundColor: Color.fromRGBO(41, 52, 98, 100),
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [

                  Image.asset('assets/topinner.png'),


                     Image.asset('assets/topouter.png'),

                ],
              ),
            ),


            Center(
              child: Column(


                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                   Padding(
                     padding: const EdgeInsets.all(50.0),
                     child: Text(
                      'Log In',
                       style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                   ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 52, width: 331,
                    child: TextField(decoration: InputDecoration(hintText: "Email Address",
                        hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    filled: true,
                    fillColor: Colors.white),
                    textAlign: TextAlign.left,
                    ),

                    ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(height: 52, width: 331,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,

                        decoration: InputDecoration(hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.all(10.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          filled: true,
                          fillColor: Colors.white),
                        textAlign: TextAlign.left,
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(onPressed: login,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(0, 129, 138, 100)),
                        fixedSize: MaterialStateProperty.all(Size(331, 52)),

                        shape: MaterialStateProperty.all(

                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                        )

                      ),



                      child: Text("LOGIN"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      'Register Here',
                      style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            Container(

              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset('assets/bottomright.png',
                  height: 100,
                  width: 100),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset('assets/bottomleft.png',
                    height: 100,
                    width: 100,),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  void login(){

  }
}
