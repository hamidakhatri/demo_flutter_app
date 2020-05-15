import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My New Screen'),
      ),
      body: Center(
        child: Text('This is my new screen'),
      ),
    );
  }
}
