import 'package:flutter/material.dart';
import 'package:flutter_application_github/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
    
      home:all_in_one(backgroundColor: Colors.white,),
    );
  }
}

