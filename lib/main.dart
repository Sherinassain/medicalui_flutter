import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medicalui_flutter/pages/home_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Home_page(),
    );
  }
}
