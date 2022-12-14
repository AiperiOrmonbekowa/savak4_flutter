import 'package:flutter/material.dart';

import 'card_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String kesip = '';
  String number = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Тапшырма 04',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (String value) {
                name = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'name',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              onChanged: (String value) {
                kesip = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'profession',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (String value) {
                number = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'number',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (String value) {
                email = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: ' email ',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (String value) {
                password = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'password',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (name == '' &&
                    kesip == '' &&
                    number == '' &&
                    email == '' &&
                    password == '') {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('snack'),
                    duration: Duration(seconds: 1),
                  ));
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardPagee(
                        name: name,
                        kesip: kesip,
                        number: number,
                        email: email,
                      ),
                    ),
                  );
                }
              },
              child: const Text('войти '),
            ),
          ],
        ),
      ),
    );
  }
}
