import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemon_app/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage( {Key? key,}): super (key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  late String username, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, height: double.infinity,
        child: SingleChildScrollView(
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

              //text 1
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

              //text 2
              Container(
                padding: const EdgeInsets.all(5), //You can use EdgeInsets like above
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
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.only(bottom: 10, left: 20,right: 20),
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: "Enter Your name",
                        labelText: "Name",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        )
                      ),
                      validator: (_username) {
                        if (_username == null || _username.isEmpty){
                         return 'Please enter your name';
                        }
                        return null;
                      },
                      onSaved: (_username){
                        username = _username!;
                      },
                    ),
                  ],
                ),
              ),

              //form pssword
              Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Your Password",
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        )
                      ),
                      validator: (_password) {
                        if (_password == null || _password.isEmpty){
                         return 'Please enter your password';
                        }
                        return null;
                      },
                      onSaved: (_password){
                        password = _password!;
                      },
                    )
                  ],
                ),
              ),

              //button
              Container(
                child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          // if (formKey.currentState!.validate()){
                          //   formKey.currentState!.save();
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => StartPage(),
                          //     )
                          //   );
                          // }
                        }, child: const Text('Login')
                      ),
                    ]
                  ),
              ),
            ],
          ),
        ) 
      ),
    );
  }
}