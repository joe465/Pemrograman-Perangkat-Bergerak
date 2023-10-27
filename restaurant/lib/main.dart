import 'package:flutter/material.dart';

import 'package:restaurant/home_page.dart';
import 'package:restaurant/style.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: pageColor,
        appBar: AppBar(title: const Text(
          'Restoran Makan',
          style: headerH1,
        ), 
            centerTitle: true,
        ),
        body: const HomePage(), 
        ),
      );
  } 
}

