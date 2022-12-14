import 'package:flutter/material.dart';

class CardPagee extends StatelessWidget {
  CardPagee({
    Key? key,
    required this.name,
    required this.kesip,
    required this.number,
    required this.email,
  }) : super(key: key);

  String name;
  String kesip;
  String number;
  String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text(
          'Тапшырма 04',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/foto.jpg'),
              ),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontFamily: 'Lobster-Regular'),
              ),
              Text(
                kesip,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'RobotoSlab',
                  fontSize: 18,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 180),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.black,
                height: 45,
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.phone,
                      color: Colors.greenAccent,
                    ),
                    const SizedBox(width: 30),
                    Text(
                      '+996  $number',
                      style: const TextStyle(
                        color: Colors.greenAccent,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 45,
                color: Colors.black,
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.email,
                      color: Colors.greenAccent,
                    ),
                    const SizedBox(width: 30),
                    Text(
                      email,
                      style: const TextStyle(
                        color: Colors.greenAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
