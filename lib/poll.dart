import 'dart:convert';
import 'dart:html';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iVote/details.dart';
import 'package:iVote/home.dart';
import 'package:iVote/result.dart';
import 'package:iVote/vote_page.dart';
import 'package:iVote/voters_registration.dart';

enum Selected {
  value1,
  value2,
  value3,
  value4,
  value5,
  value6,
  value7,
  value8,
  value9,
  value10,
  value11,
  value12,
  value13,
  value14,
  value15,
  value16,
  value17,
  value18,
  value19,
  value20
}

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
  GetContestantData() async {
    var response =
        await http.get(Uri.https('127.0.0.1', 'contestants'));
    var jsonData = jsonDecode(response.body);
    List<Voters> voters = [];
    for (var u in jsonData) {
      Voters voter = Voters(u['FullName'], u['password'], u['identity'],
          u['organization'], u['email']);
      voters.add(voter);
    }
    print(voters.length);
    // Contestants = voters;
    return voters;
  }
  int i = 0;
  Selected? _selected;
  @override
  ValueGetter getcontestants() {
    return GetContestantData();
  }

  @override
  Widget Render(name, display) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: RadioListTile(
              title: Text(display),
              value: name,
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

  // void getit(int num) {
  //   int i;
  //   for (i = 0; i < num; i += 1) {
  //     Render();
  //   }
  // }

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
            for (i = 0; i < 10; i += 1)
            	Render(Selected.values[i += 1], Selected.values[i += 1].name),
	
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.SUCCES,
                        animType: AnimType.BOTTOMSLIDE,
                        title: "Congratulation",
                        desc: "Voting successful",
                        btnCancelOnPress: (() {}),
                        btnOkOnPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VotePage(),
                              ));
                        },
                        dismissOnBackKeyPress: true,
                        dismissOnTouchOutside: true,
                      ).show();
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
                      //Navigator.push(
                          //context,
                          //MaterialPageRoute(
                            //builder: (context) => Vote(),
                          //));
	               GetContestantData();
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

class Voters {
  final String FullName, email, password, identity, organization;
  Voters(
      this.FullName, this.password, this.identity, this.organization, this.email);
}
