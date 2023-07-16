import 'package:flutter/material.dart';
import 'package:vip_signal/login_page.dart';

void main() {
  runApp(
    run_run(),
  );
}

//chon faqat gharare mohtava taghir koneh
//ma be khode sakhtemon dast nemizanim be jash
//scafold ro ja b ja mikonim
class run_run extends StatelessWidget {
  const run_run({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'vazir',
      ),
      debugShowCheckedModeBanner: false,
      home: run_app_two(),
    );
  }
}
