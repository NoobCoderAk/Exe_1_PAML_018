import 'package:flutter/material.dart';
import 'package:pokemon_app/login_page.dart';
import 'package:pokemon_app/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({
    super.key,
  });

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  //apply margin and padding using Container Widget.
                  padding: const EdgeInsets.all(
                      20), //You can use EdgeInsets like above
                  margin: const EdgeInsets.only(top: 60),
                  child: const Text(
                    "Pokedex.",
                    style: TextStyle(
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(
                      20), //You can use EdgeInsets like above
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "Welcome to Pokedex. \n You can find your favorite pokemon here",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 155, 154, 154),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(top: 60, bottom: 130),
                  child: Image.asset(
                    'assets/image/pokeball_logo.png',
                    height: 150,
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  backgroundColor: Colors.yellow,
                  child: const Icon(Icons.arrow_circle_right),
                )
              ],
            ),
          )),
    );
  }
}
