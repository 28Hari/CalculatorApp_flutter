import 'package:flutter/material.dart';
import 'calculator.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
theme: ThemeData(primarySwatch: Colors.orange),
      home: Calculator(),
    );
  }
}
