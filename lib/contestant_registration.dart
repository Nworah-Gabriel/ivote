import 'package:flutter/material.dart';
import 'package:vote/home.dart';
import 'package:vote/vote_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iVote',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: RegisterContestant(),
    );
  }
}

class RegisterContestant extends StatefulWidget {
  RegisterContestant({super.key});

  @override
  _RegisterContestantState createState() => _RegisterContestantState();
}

class _RegisterContestantState extends State<RegisterContestant> {
  late String? FullName;
  late String? position;
  late String? organization;
  late String? validate_organization;

  final GlobalKey<_RegisterContestantState> _formkey =
      GlobalKey<_RegisterContestantState>();

  Widget _buildFullName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'FullName'),
      validator: (String? value) {
        if (value == null) {
          return 'Full name is required';
        }
      },
      onSaved: (String? value) {
        FullName = value;
      },
    );
  }

  Widget _buildPosition() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String? value) {
        if (value == null) {
          return 'Position name is required';
        }
      },
      onSaved: (String? value) {
        position = value;
      },
    );
  }

  Widget _buildOrganization() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Organization'),
      validator: (String? value) {
        if (value == null) {
          return 'Organization is required';
        }
      },
      onSaved: (String? value) {
        organization = value;
      },
    );
  }

  Widget _buildValidateOrganization() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Retype Organization'),
      validator: (String? value) {
        if (value == null) {
          return 'Organization validation is required';
        }
      },
      onSaved: (String? value) {
        validate_organization = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Register",
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
        ),
        body: Center(
            widthFactor: 20.0,
            child: SingleChildScrollView(
                child: Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _buildFullName(),
                      _buildPosition(),
                      _buildOrganization(),
                      _buildValidateOrganization(),
                      SizedBox(
                        height: 60,
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
                                      builder: (context) =>
                                          RegisterContestant(),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.red,
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 3.0),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            ))));
  }
}
