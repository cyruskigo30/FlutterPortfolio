import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio Website',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Portfolio(),
    );
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 38.0, horizontal: 8.0),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.blueGrey,
                foregroundImage: AssetImage('images/cyrus.jpeg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Cyrus Kigo',
                style: TextStyle(
                    color: Colors.blueAccent.shade700,
                    // fontSize: 28.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Palatino'),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(color: Colors.black),
                backgroundColor: Colors.blueAccent.shade700,
              ),
              icon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
              ),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Contact Me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
