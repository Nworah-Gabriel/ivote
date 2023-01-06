import 'package:flutter/material.dart';
import 'package:vote/details.dart';
import 'package:vote/home.dart';
import 'package:vote/result.dart';
import 'package:vote/vote_page.dart';
import 'package:vote/voters_registration.dart';

enum Selected { Downloadable, Deliverable }

class PollPage extends StatelessWidget {
  const PollPage({super.key});

  // Selected? _selected;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter AppBar Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Poll(),
    );
  }
}

class Poll extends StatefulWidget {
  Poll({super.key});
  @override
  _PollState createState() => _PollState();
}

class _PollState extends State<Poll> {
  Object? _value = {
    "value": "",
  };
  late int i;
  // late String name;
  // name = _value;
  Selected? _selected;
  @override
  Widget Render() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: RadioListTile(
              title: Text(Selected.Deliverable.name),
              value: Selected.Downloadable,
              groupValue: _selected,
              onChanged: (val) {
                setState(() {
                  _selected = val;
                });
              }),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
              ),
              borderRadius: BorderRadius.circular(10))),
    );
  }

  void getit(int num) {
    int i;
    for (i = 0; i < num; i += 1) {
      Render();
    }
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
                icon:
                    const Icon(Icons.app_registration_rounded), // The "+" icon
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Vote(),
                      ));
                }, // The `_incrementCounter` function
              ),
              IconButton(
                icon: const Icon(Icons.bar_chart), // The "+" icon
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Result(),
                      ));
                }, // The `_incrementCo, // The `_incrementCounter` function
              ),
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
        body: SingleChildScrollView(
            child: Container(
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
              height: 10,
            ),
            // Render(),
            // Render(),
            for (i = 0; i < 10; i += 1) Render(),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterVoter(),
                          ));
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  height: 50,
                  width: 130,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 80, 246, 86),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 3.0),
                    ],
                  ),
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
                      'Cancel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  height: 50,
                  width: 130,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 3.0),
                    ],
                  ),
                )
              ],
            )
          ]),
        )));
  }
}
