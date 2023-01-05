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
      home: RegisterOrganization(),
    );
  }
}

class RegisterOrganization extends StatefulWidget {
  RegisterOrganization({super.key});

  @override
  _RegisterOrganizationState createState() => _RegisterOrganizationState();
}

class _RegisterOrganizationState extends State<RegisterOrganization> {
  late String? Name;
  late String? password;
  late String? identity;

  final GlobalKey<_RegisterOrganizationState> _formkey =
      GlobalKey<_RegisterOrganizationState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'FullName'),
      validator: (String? value) {
        if (value == null) {
          return 'Organization name is required';
        }
      },
      onSaved: (String? value) {
        Name = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String? value) {
        if (value == null) {
          return 'Password is required';
        }
      },
      onSaved: (String? value) {
        password = value;
      },
    );
  }

  Widget _buildIdentity() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Identity'),
      validator: (String? value) {
        if (value == null) {
          return 'Organization identity is required';
        }
      },
      onSaved: (String? value) {
        identity = value;
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
                      _buildName(),
                      _buildPassword(),
                      _buildIdentity(),
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
                                          RegisterOrganization(),
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
