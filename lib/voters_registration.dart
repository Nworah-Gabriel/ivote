import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:iVote/home.dart';
import 'package:iVote/poll.dart';
import 'package:iVote/vote_page.dart';

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
      home: RegisterVoter(),
    );
  }
}

class RegisterVoter extends StatefulWidget {
  RegisterVoter({super.key});

  @override
  _RegisterVoterState createState() => _RegisterVoterState();
}

class _RegisterVoterState extends State<RegisterVoter> {
  late String? FullName;
  late String? email;
  late String? identity;
  late String? password;
  late String? organization;
  late String? validate_organization;

  final GlobalKey<_RegisterVoterState> _formkey =
      GlobalKey<_RegisterVoterState>();

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

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String? value) {
        if (value == null) {
          return 'Email name is required';
        }
      },
      onSaved: (String? value) {
        email = value;
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
                      _buildEmail(),
                      _buildIdentity(),
                      _buildPassword(),
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
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.SUCCES,
                                  animType: AnimType.BOTTOMSLIDE,
                                  title: "Congratulations!",
                                  desc: "Voters Registration successful",
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
