import 'package:flutter/material.dart';
import 'package:vote/details.dart';
import 'package:vote/poll.dart';
import 'package:vote/result.dart';
import 'package:vote/splashscreen.dart';
import 'package:vote/vote_page.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

// @override
// Widget build(BuildContext context) {
//   return Container(
//     child: Center(
//       child: Text(
//         'WELCOME TO IVTE',
//         style: TextStyle(
//           color: Colors.amberAccent,
//           fontSize: 30,
//         ),
//       ),
//     ),
//   );

// }
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter AppBar Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "iVote",
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          actions: <Widget>[
            // IconButton(
            //   icon: const Icon(Icons.how_to_vote_sharp),
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => Poll(),
            //         ));
            //   },
            // ),
            // IconButton(
            //   icon: const Icon(Icons.bar_chart_outlined), // The "+" icon
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => Result(),
            //         ));
            //   }, // The `_incrementCo, // The `_incrementCounter` function
            // ),
            // IconButton(
            //   icon: const Icon(Icons.app_registration_rounded), // The "+" icon
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => Vote(),
            //         ));
            //   }, // The `_incrementCounter` function
            // ),
            IconButton(
              icon: const Icon(Icons.help), // The "+" icon
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => About(),
                    ));
              }, // The `_incrementCounter` function
            ),
          ]),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'images/ivote.png',
              // width: 300,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              'Voting made easy and reliable with iVote. Cast your vote from anywhere around the world where no one is watching',
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Vote(),
                    ));
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            height: 50,
            width: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromARGB(255, 80, 246, 86),
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 3.0),
              ],
            ),
          )
        ],
      )),
    );
  }
}
