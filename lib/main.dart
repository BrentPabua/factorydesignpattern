import 'package:factory_pattern/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Assignment #1',
    theme: ThemeData(
        primarySwatch: Colors.blue
    ),
    home: const MobileAppLayout(),
  ));
}


