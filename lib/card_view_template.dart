import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          width: 500,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 7,
                  spreadRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
              color: Colors.white),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue[400],
                  image: DecorationImage(
                      image: AssetImage(assetpoke), fit: BoxFit.fill),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 170,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(nomorpoke),
                          ),
                          Container(
                            child: Text(
                              namapoke,
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                            padding: const EdgeInsets.only(left: 5),
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue),
                            child: Text(
                              tipepoke,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      child: Text(deskpoke, textAlign: TextAlign.justify),
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
