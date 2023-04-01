import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemon_app/home_page.dart';
import 'package:pokemon_app/main.dart';
import 'package:validators/validators.dart';
import 'package:pokemon_app/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String username, password;

  final cUser = TextEditingController();
  final cPass = TextEditingController();

  bool visibilityPass = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 60, bottom: 5),
                    child: Image.asset(
                      'assets/image/pokemon_logo.png',
                      height: 150,
                      width: 300,
                    ),
                  ),

                  //text 1
                  Container(
                    //apply margin and padding using Container Widget.
                    padding: const EdgeInsets.all(
                        5), //You can use EdgeInsets like above
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

                  //text 2
                  Container(
                    padding: const EdgeInsets.all(
                        5), //You can use EdgeInsets like above
                    margin: const EdgeInsets.only(top: 5, bottom: 40),
                    child: const Text(
                      "There's No Sense In Going Ou Of\nYour Wy To Get Somebody To Like You",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 155, 154, 154),
                      ),
                    ),
                  ),

                  //form username
                  Container(
                    padding: const EdgeInsets.all(2),
                    margin:
                        const EdgeInsets.only(bottom: 10, left: 20, right: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: cUser,
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: "Enter Your name",
                              labelText: "Name",
                              prefixIcon: const Icon(Icons.person),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please input your Name';
                            } else if (value.length <= 5) {
                              return "Name must be at least 6 character long !";
                            } else if (value != "admin12345") {
                              return 'Incorrect Name !';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),

                  //form pssword
                  Container(
                    padding: const EdgeInsets.all(2),
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: cPass,
                          obscureText: !visibilityPass,
                          decoration: InputDecoration(
                              hintText: "Enter Your Password",
                              labelText: "Password",
                              prefixIcon: const Icon(Icons.lock),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      visibilityPass = !visibilityPass;
                                    });
                                  },
                                  icon: visibilityPass
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please input your Pasword';
                            } else if (value.length <= 5) {
                              return "Password must be at least 6 character long !";
                            } else if (value != "123456") {
                              return 'Incorrect password !';
                            }
                            return null;
                          },
                          // maxLength: 16,
                        )
                      ],
                    ),
                  ),

                  //button
                  Container(
                    child: Column(children: [
                      ElevatedButton(
                          onPressed: () {
                            username = cUser.text;
                            password = cPass.text;

                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage(
                                          nama: username, password: password)));
                            }
                          },
                          child: const Text('Login'),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)),
                              backgroundColor: Colors.yellow,
                              minimumSize: const Size(200, 40))),
                    ]),
                  ),
                  Container(
                    child: Column(children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterPage()));
                          },
                          child: const Text('Register'))
                    ]),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
