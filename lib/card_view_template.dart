import 'package:flutter/material.dart';

class CardViewTemplate extends StatelessWidget {
  const CardViewTemplate({
    super.key,
    required this.nomorpoke,
    required this.namapoke,
    required this.deskpoke,
    required this.assetpoke,
    required this.tipepoke,
  });

  final String nomorpoke;
  final String namapoke;
  final String deskpoke;
  final String tipepoke;
  final String assetpoke;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
          margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          width: 500,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 80, 80, 80).withOpacity(0.1),
                  blurRadius: 7,
                  spreadRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
              color: const Color.fromARGB(255, 255, 255, 255)),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue[400],
                  image: DecorationImage(
                      image: AssetImage(assetpoke), fit: BoxFit.fill),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 170,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(nomorpoke),
                          ),
                          Container(
                            child: Text(
                              namapoke,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 18,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            padding: const EdgeInsets.only(
                                left: 5, top: 2, bottom: 2, right: 2),
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromARGB(255, 70, 190, 86)),
                            child: Text(
                              tipepoke,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      child: Text(
                        deskpoke,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
