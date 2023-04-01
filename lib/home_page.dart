// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pokemon_app/card_view_template.dart';

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
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    margin: const EdgeInsets.only(top: 40, left: 175),
                    height: 60,
                    width: 70,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/image/soeharto.jpg'),
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
                margin: const EdgeInsets.only(top: 20, bottom: 30),
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
              Column(
                children: const [
                  CardViewTemplate(
                      nomorpoke: '#001',
                      namapoke: 'Squirtle',
                      deskpoke:
                          'When it retracts its long neck into its shell, it squirts out water with vigorous force.',
                      assetpoke: 'assets/image/squirtle.png',
                      tipepoke: 'Water'),
                  CardViewTemplate(
                      nomorpoke: '#002',
                      namapoke: 'Charmeleon',
                      deskpoke:
                          'When it retracts its long neck into its shell, it squirts out water with vigorous force.',
                      assetpoke: 'assets/image/charmeleon.png',
                      tipepoke: 'Water'),
                  CardViewTemplate(
                      nomorpoke: '#003',
                      namapoke: 'Fire',
                      deskpoke:
                          'When it retracts its long neck into its shell, it squirts out water with vigorous force.',
                      assetpoke: 'assets/image/charmander.png',
                      tipepoke: 'Fire'),
                  CardViewTemplate(
                      nomorpoke: '#004',
                      namapoke: 'charizard',
                      deskpoke:
                          'When it retracts its long neck into its shell, it squirts out water with vigorous force.',
                      assetpoke: 'assets/image/charizard.png',
                      tipepoke: 'Fire'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
