import 'package:flutter/material.dart';

import 'features/home/presentation/home_screen.dart';
import 'widgets/appBarComponent.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(appBar: AppBarTest(), body: HomeScreen()),
    );
  }
}
