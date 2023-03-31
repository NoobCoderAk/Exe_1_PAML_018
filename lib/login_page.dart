import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemon_app/main.dart';
import 'package:validators/validators.dart';
import 'package:pokemon_app/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage( {Key? key,}): super (key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  late String username, password;

  final cUser = TextEditingController();
  final cPass = TextEditingController();
    
  bool visibilityPass = false;

  

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity, height: double.infinity,
        child: Form(
          key: _formKey,
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
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.only(bottom: 10, left: 20,right: 20),
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
                            borderRadius: BorderRadius.circular(5.0)
                          )
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Input Username';
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
                  margin: const EdgeInsets.only(left: 20,right: 20),
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
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                visibilityPass=!visibilityPass;
                              });
                            },
                            icon: visibilityPass ? Icon(Icons.visibility) : Icon(Icons.visibility_off)
                          )
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Input Passowrd';
                          }
                          return null;
                        },
                        maxLength: 16,
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

                            username = cUser.text;
                            password = cPass.text;

                            if (_formKey.currentState!.validate()) {

                              if(cUser != 'admin'){
                                print("username salah");
                              }else if(cPass.text.length < 6){
                                print("password harus minimal atau lebih dari 6 ");
                              }else{
                                //aksi pindah
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterPage(
                                      nama: username,
                                      password:password, // variable yang di pass ke page home
                                    )
                                  )
                                );
                              }
                            }
                          }, child: const Text('Login')
                        ),
                      ]
                    ),
                ),
              ],
          ),
        )
        ),
      ),
    );
  }

  // void validateLogin(BuildContext context){
  //   if(cUser.text==username && cPass.text==password){
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context)=>const RegisterPage(),)
  //     );
  //   }else if (cUser.text.isEmpty && cPass.text==password){
      
  //   }
  // }
}