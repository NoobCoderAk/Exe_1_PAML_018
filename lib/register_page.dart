import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemon_app/main.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage( {Key? key,}): super (key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  late String nUsername, nPassword;

  //tambahkan form
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Login'),
        backgroundColor: Colors.orange,
      ),

      body: Form(
        key: _formKey,
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              //cek data field nya kosong
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Input Username';
                }else if (value.length <=5){
                  return "username harus lebih dari 5 karakter atau lebih";
                }else if ( value!="admin12345"){
                  return 'username salah';
                }
                return null;
              },

              controller: myUsernameController,
              decoration: InputDecoration(
                hintText: 'Input Username',
              ),
            ),
            TextFormField(
              
              //cek data field nya kosong
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Input Pasword';
                }else if (value.length <=5){
                  return "password harus terdiri dari 6 karakter atau lebih";
                }else if ( value!="123456"){
                  return 'password salah';
                }
                return null;
              },
              controller: myPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Input Password',
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            MaterialButton(
              minWidth: 85.0,
              height: 50.0,
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {

                //cek apakah username = rizki
                //cek password < 5 : gak bisa login, >5 bisa login

                //ngambil value dari widget textfield
                nUsername = myUsernameController.text;
                nPassword = myPasswordController.text;

                if (_formKey.currentState!.validate()) {

                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StartPage(
                              nama: nUsername,
                              password:
                              nPassword, // variable yang di pass ke page home
                            )
                          )
                        );
                }
              },
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}