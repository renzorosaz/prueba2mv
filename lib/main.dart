import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromRGBO(244, 244, 244, 1),
            elevation: 1,
            toolbarHeight: 75,
            title: const Text("Inicio",
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w600,
                    color: Colors.black54)),
          ),
          body: HomeScreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Text(
        "SNACKS",
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
