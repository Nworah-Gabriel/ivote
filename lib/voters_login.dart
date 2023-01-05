import 'package:flutter/material.dart';
import 'package:vote/home.dart';
import 'package:vote/poll.dart';
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
      home: VotersLogin(),
    );
  }
}

class VotersLogin extends StatefulWidget {
  VotersLogin({super.key});

  @override
  _VoterLoginState createState() => _VoterLoginState();
}

class _VoterLoginState extends State<VotersLogin> {
  late String? FullName;
  late String? identity;
  late String? password;
  late String? position;
  late String? organization;

  final GlobalKey<_VoterLoginState> _formkey = GlobalKey<_VoterLoginState>();

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

  Widget _buildPostion() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Position'),
      validator: (String? value) {
        if (value == null) {
          return 'Position is required';
        }
      },
      onSaved: (String? value) {
        position = value;
      },
    );
  }

  Widget _buildIdentity() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'identity'),
      validator: (value) {
        if (value == null) {
          return 'identity is required';
        }
      },
      onSaved: (value) {
        identity = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      validator: (value) {
        if (value == null) {
          return 'password is required';
        }
      },
      onSaved: (value) {
        password = value;
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
              child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _buildFullName(),
                      _buildIdentity(),
                      _buildPassword(),
                      _buildPostion(),
                      _buildOrganization(),
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
                                      builder: (context) => Vote(),
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
            )));
  }
}
