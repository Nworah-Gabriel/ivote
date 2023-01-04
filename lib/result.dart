import 'package:flutter/material.dart';
import 'package:vote/home.dart';

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
class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter AppBar Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Result(),
    );
  }
}

class Result extends StatefulWidget {
  Result({super.key});

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
          "Results",
          style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal),
        ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.bar_chart), // The "+" icon
        //     onPressed: () {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => HomePage(),
        //           ));
        //     }, // The `_incrementCounter` function
        //   ),
        //   IconButton(
        //     icon: const Icon(Icons.read_more_sharp), // The "+" icon
        //     onPressed: _incrementCounter, // The `_incrementCounter` function
        //   ),
        // ]),
      ),
      body: Center(child: Text('$_counter', style: TextStyle(fontSize: 50.0))),
    );
  }
}
