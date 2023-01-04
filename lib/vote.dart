import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vote/details.dart';
import 'package:vote/home.dart';
import 'package:vote/result.dart';

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
              icon: const Icon(Icons.read_more_outlined), // The "+" icon
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
        child: Column(children: [
          SizedBox(
            height: 60,
          ),
          Column(
            children: [
              Container(
                child: Center(
                    child: Text(
                  "Cast your vote!",
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
            height: 60,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // decoration: BoxDecoration(border: ),
                    child: IconButton(
                        icon: const Icon(Icons.ads_click_outlined),
                        onPressed: _incrementCounter),
                  ),
                  // ),
                  Container(
                    child: Text(
                      "Robert Hawkins ",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Container(
                    child: Text("$_counter", style: TextStyle(fontSize: 30.0)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // decoration: BoxDecoration(border: ),
                  child: IconButton(
                      icon: const Icon(Icons.ads_click_outlined),
                      onPressed: _incrementCounter),
                ),
                // ),
                Container(
                  child: Text(
                    "Kyler Bryan ",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text("$_counter", style: TextStyle(fontSize: 30.0)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // decoration: BoxDecoration(border: ),
                  child: IconButton(
                      icon: const Icon(Icons.ads_click_outlined),
                      onPressed: _incrementCounter),
                ),
                // ),
                Container(
                  child: Text(
                    "Arberto Etoo",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text("$_counter", style: TextStyle(fontSize: 30.0)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // decoration: BoxDecoration(border: ),
                  child: IconButton(
                      icon: const Icon(Icons.ads_click_outlined),
                      onPressed: _incrementCounter),
                ),
                // ),
                Container(
                  child: Text(
                    "Kim Walker",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text("$_counter", style: TextStyle(fontSize: 30.0)),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
