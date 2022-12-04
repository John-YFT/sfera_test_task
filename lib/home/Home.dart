import 'package:flutter/material.dart';


class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(167, 30, 30, 30),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Personal account', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, ),)
      ),
    );
  }
}
