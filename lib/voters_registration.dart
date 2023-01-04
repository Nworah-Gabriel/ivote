import 'package:flutter/material.dart';
import 'package:vote/home.dart';

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
      decoration: InputDecoration(labelText: 'FullName'),
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
          child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildFullName(),
                  _buildEmail(),
                  _buildIdentity(),
                  _buildPassword(),
                  _buildOrganization(),
                  _buildValidateOrganization(),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [],
                  )
                ],
              )),
        ));
  }
}
