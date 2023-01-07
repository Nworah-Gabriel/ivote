import 'package:flutter/material.dart';
import 'package:iVote/home.dart';

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
      home: About(),
    );
  }
}

class About extends StatefulWidget {
  About({super.key});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
            "Help?",
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.home), // The "+" icon
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              }, // The `_incrementCounter` function
            ),
          ]),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                  "iVote is a voting mobile application that was created in order to making voting easy and convinent. For easy navigation, read the icon meanings listed below.",
                  style: TextStyle(fontSize: 20.0)),
            ),
            Icon(
              Icons.how_to_vote,
              color: Color.fromARGB(255, 74, 182, 78),
              size: 50,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                  "This icon shown above represents the navigation button for casting your vote.",
                  style: TextStyle(fontSize: 20.0)),
            ),
            Icon(
              Icons.bar_chart_outlined,
              color: Color.fromARGB(255, 74, 182, 78),
              size: 50,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                  "This icon shown above represents the navigation button for checking the results of the casted votes displayed as a bar chart.",
                  style: TextStyle(fontSize: 20.0)),
            ),
            Icon(
              Icons.app_registration_rounded,
              color: Color.fromARGB(255, 74, 182, 78),
              size: 50,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                  "This icon shown above represents the navigation button that redirects to the catalogue page.",
                  style: TextStyle(fontSize: 20.0)),
            ),
            Icon(
              Icons.home,
              color: Color.fromARGB(255, 74, 182, 78),
              size: 50,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                  "This icon shown above represents the navigation button for redirecting you to the home page.",
                  style: TextStyle(fontSize: 20.0)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("Developer Contact",
                  style:
                      TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(children: [
                Icon(Icons.phone, size: 20),
                Text("    +234 902 509 1332",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold))
              ]),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Row(children: [
                Icon(Icons.email_outlined, size: 20),
                Text("    gabrielnworah6@gmail.com",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold))
              ]),
            )
          ],
        )),
      ),
    );
  }
}
