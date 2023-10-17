import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router.dart';
import 'package:nuvigator/next.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Nuvigator(
        router: MyRouter(),
      ),
    );
  }
}
