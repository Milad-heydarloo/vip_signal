import 'package:flutter/material.dart';

void main() {
  runApp(run_app_class());
}

class run_app_class extends StatelessWidget {
  const run_app_class({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Center(
        child: TextButton(onPressed: onPressed(){

        }, child: Text('next')),
      ))),
    );
  }
}

class run_app_two extends StatelessWidget {
  const run_app_two({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Center(
        child: Text('2'),
      ))),
    );
  }
}
