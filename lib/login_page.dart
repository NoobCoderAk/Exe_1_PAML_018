import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget> [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 60, bottom: 5),
              child: Image.asset(
                'assets/image/pokemon_logo.png',
                height: 150,
              ),
            ),
            Container( //apply margin and padding using Container Widget.
              padding: const EdgeInsets.all(5), //You can use EdgeInsets like above
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                "Let's get started.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 34.0, 
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5), //You can use EdgeInsets like above
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                "There's No Sense In Going Ou Of\nYour Wy To Get Somebody To Like You",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 155, 154, 154),
                ),
              ),
            ),
          ],
        ) 
      ),
    );
  }
}