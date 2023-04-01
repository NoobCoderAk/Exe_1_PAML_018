import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemon_app/home_page.dart';
import 'package:pokemon_app/main.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final cUser = TextEditingController();
  final cPass = TextEditingController();
  final cMail = TextEditingController();
  late String username, password, email;

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
                    margin: const EdgeInsets.only(top: 30, bottom: 5),
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
                    margin: const EdgeInsets.only(top: 5, bottom: 20),
                    child: const Text(
                      "Register",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                      ),
                    ),
                  ),

                  //form username
                  Container(
                    padding: const EdgeInsets.all(2),
                    margin: const EdgeInsets.only(
                        bottom: 10, left: 20, right: 20, top: 20),
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
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),

                  //form email
                  Container(
                    padding: const EdgeInsets.all(2),
                    margin:
                        const EdgeInsets.only(bottom: 10, left: 20, right: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: cMail,
                          decoration: InputDecoration(
                              hintText: "Enter Your email",
                              labelText: "Email",
                              prefixIcon: const Icon(Icons.mail),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please input your Email';
                            } else if (!value.contains("@")) {
                              return "Enter a valid email, try use @ !";
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
                        const EdgeInsets.only(bottom: 10, left: 20, right: 20),
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
                            }
                            return null;
                          },
                          // maxLength: 16,
                        )
                      ],
                    ),
                  ),

                  //form re-pssword
                  Container(
                    padding: const EdgeInsets.all(2),
                    margin:
                        const EdgeInsets.only(bottom: 10, left: 20, right: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          obscureText: !visibilityPass,
                          decoration: InputDecoration(
                              hintText: "Re-Enter Your Password",
                              labelText: "Re-Password",
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
                              return 'Please Re-Enter your Pasword';
                            } else if (value != password) {
                              return "Please try to match it with pasword";
                            } else if (value.length <= 5) {
                              return "Password must be at least 6 character long !";
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
                            email = cMail.text;

                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage(
                                          nama: username, password: password)));
                            }
                          },
                          child: const Text('Register'),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)),
                              backgroundColor: Colors.yellow,
                              minimumSize: const Size(200, 40))),
                    ]),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
