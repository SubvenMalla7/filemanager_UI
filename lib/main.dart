import 'dart:math';

import 'package:flutter/material.dart';

import './smallContainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 1, 25, 1),
        accentColor: Color.fromRGBO(255, 208, 50, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

Widget sized() {
  return SizedBox(
    height: 25,
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: Theme.of(context).primaryColor,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            height: screenSize.height * 0.04,
                            width: screenSize.width * 0.08,
                            child: Image(
                              image: AssetImage('assets/images/people1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  sized(),
                  sized(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "File ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 30),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.55,
                        ),
                        Icon(Icons.more_horiz, color: Colors.white),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Text(
                        'Manager',
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(text: 'Lets clean and '),
                            TextSpan(
                                text: "manage your file's.",
                                style: TextStyle(
                                    color: Theme.of(context).accentColor))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.45,
                  ),
                  Container(
                    height: screenSize.height * 0.23,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(90))),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenSize.height * 0.32,
              right: screenSize.width * 0.18,
              child: Container(
                height: screenSize.height * 0.48,
                width: screenSize.width * 0.55,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(227, 0, 26, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(227, 0, 26, 0.6),
                        spreadRadius: 2,
                        blurRadius: 0,
                        offset: Offset(10, 0),
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0, horizontal: 18),
                  child: SmallContainer(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
