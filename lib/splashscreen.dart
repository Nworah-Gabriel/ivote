import 'package:flutter/material.dart';
import 'package:vote/home.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  // @override
  // Void initState();

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 4),
      (() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }),
    );
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: Container(
          child: Center(child: Image.asset('images/ivote2.jfif')),
          color: Color.fromARGB(255, 255, 254, 254),
        ),
      ),
    );
  }
}
