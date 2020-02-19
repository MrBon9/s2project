import 'package:flutter/material.dart';
import 'package:learn_flutter/background_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      home: BackgroundColor(),
    );
  }
}
