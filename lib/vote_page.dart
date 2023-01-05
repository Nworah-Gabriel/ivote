import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vote/contestant_registration.dart';
import 'package:vote/details.dart';
import 'package:vote/home.dart';
import 'package:vote/organization_register.dart';
import 'package:vote/poll.dart';
import 'package:vote/result.dart';
import 'package:vote/voters_registration.dart';

class PollPage extends StatelessWidget {
  const PollPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter AppBar Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Vote(),
    );
  }
}

class Vote extends StatefulWidget {
  Vote({super.key});

  @override
  _VoteState createState() => _VoteState();
}

class _VoteState extends State<Vote> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text(
          //   "iVote",
          //   style: TextStyle(
          //       fontSize: 40.0,
          //       fontWeight: FontWeight.bold,
          //       fontStyle: FontStyle.italic),
          // ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.bar_chart), // The "+" icon
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(),
                    ));
              }, // The `_incrementCounter` function
            ),
            IconButton(
              icon: const Icon(Icons.help_outline_rounded), // The "+" icon
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => About(),
                    ));
              }, // The `_incrementCounter` function
            ),
          ]),
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 60,
            ),
            Column(
              children: [
                Container(
                  child: Center(
                      child: Text(
                    "Explore iVote!",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.white),
                  )),
                  height: 140,
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 98, 209, 102),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 40.0),
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Column(
                      children: [
                        Container(
                          child: IconButton(
                            icon: const Icon(
                              Icons.group_add_rounded,
                              size: 50,
                            ),
                            focusColor: Color.fromARGB(255, 250, 249, 249),
                            hoverColor: Color.fromARGB(255, 252, 250, 250),
                            highlightColor: Color.fromARGB(255, 252, 250, 250),
                            splashRadius: 10,
                            color: Color.fromARGB(255, 52, 161, 55),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        RegisterOrganization(),
                                  ));
                            },
                            padding: const EdgeInsets.fromLTRB(20, 20, 23, 20),
                          ),
                          height: 140,
                          width: 120,
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 10.0),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            child: Center(
                                child: Text(
                          "Create Firm",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 63, 61, 61)),
                        )))
                      ],
                    )),
                    Container(
                        child: Column(
                      children: [
                        Container(
                          child: IconButton(
                            icon: const Icon(
                              Icons.how_to_vote,
                              size: 50,
                            ),
                            focusColor: Color.fromARGB(255, 250, 249, 249),
                            hoverColor: Color.fromARGB(255, 252, 250, 250),
                            highlightColor: Color.fromARGB(255, 252, 250, 250),
                            splashRadius: 10,
                            color: Color.fromARGB(255, 52, 161, 55),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Poll(),
                                  ));
                            },
                            padding: const EdgeInsets.fromLTRB(20, 20, 23, 20),
                          ),
                          height: 140,
                          width: 120,
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 10.0),
                                )
                              ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            child: Center(
                                child: Text(
                          "Cast Vote",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 63, 61, 61)),
                        )))
                      ],
                    ))
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: SingleChildScrollView(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Column(
                      children: [
                        Container(
                          child: IconButton(
                            icon: const Icon(
                              Icons.person_add_alt_1_rounded,
                              size: 50,
                            ),
                            focusColor: Color.fromARGB(255, 250, 249, 249),
                            hoverColor: Color.fromARGB(255, 252, 250, 250),
                            highlightColor: Color.fromARGB(255, 252, 250, 250),
                            splashRadius: 10,
                            color: Color.fromARGB(255, 52, 161, 55),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterVoter(),
                                  ));
                            },
                            padding: const EdgeInsets.fromLTRB(20, 20, 23, 20),
                          ),
                          height: 140,
                          width: 120,
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 15.0,
                                    offset: Offset(0.0, 10.0)),
                              ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            child: Center(
                                child: Text(
                          "Register Voter",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 63, 61, 61)),
                        )))
                      ],
                    )),
                    Container(
                        child: Column(
                      children: [
                        Container(
                          child: IconButton(
                            icon: const Icon(
                              Icons.my_library_books_outlined,
                              size: 50,
                            ),
                            focusColor: Color.fromARGB(255, 250, 249, 249),
                            hoverColor: Color.fromARGB(255, 252, 250, 250),
                            highlightColor: Color.fromARGB(255, 252, 250, 250),
                            splashRadius: 10,
                            color: Color.fromARGB(255, 52, 161, 55),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterContestant(),
                                  ));
                            },
                            padding: const EdgeInsets.fromLTRB(20, 20, 23, 20),
                          ),
                          height: 140,
                          width: 120,
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 10.0),
                                )
                              ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            child: Center(
                                child: Text(
                          "Add Contestant",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 63, 61, 61)),
                        )))
                      ],
                    ))
                  ],
                )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                child: Column(
              children: [
                Container(
                  child: IconButton(
                    icon: const Icon(
                      Icons.leaderboard_rounded,
                      size: 50,
                    ),
                    focusColor: Color.fromARGB(255, 250, 249, 249),
                    hoverColor: Color.fromARGB(255, 252, 250, 250),
                    highlightColor: Color.fromARGB(255, 252, 250, 250),
                    splashRadius: 10,
                    color: Color.fromARGB(255, 52, 161, 55),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Result(),
                          ));
                    },
                    padding: const EdgeInsets.fromLTRB(20, 20, 23, 20),
                  ),
                  height: 140,
                  width: 250,
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 10.0),
                        )
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Center(
                        child: Text(
                  "View Result",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 63, 61, 61)),
                )))
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
