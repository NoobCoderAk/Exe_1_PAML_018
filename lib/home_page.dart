// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  final String nama;
  final String password;
  const HomePage({
    Key? key,
    required this.nama,
    required this.password,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cUser = TextEditingController();
  late String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: RichText(
                      text: TextSpan(
                        text: 'Hello, ',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                            text: '${widget.nama}',
                            style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40, left: 200),
                    margin: const EdgeInsets.only(top: 40, left: 145),
                    height: 60,
                    width: 70,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/image/pokemon_logo.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Pokedex.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                      fontSize: 24),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    hintText: 'Cari Pokemon',
                    hintStyle: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.normal),
                    prefixIcon: const Icon(Icons.search),
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
