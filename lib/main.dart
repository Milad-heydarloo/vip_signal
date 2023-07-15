import 'package:flutter/material.dart';

void main() {
  runApp(run_run());
}

//chon faqat gharare mohtava taghir koneh
//ma be khode sakhtemon dast nemizanim be jash
//scafold ro ja b ja mikonim
class run_run extends StatelessWidget {
  const run_run({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: run_app_class(),
    );
  }
}

class run_app_class extends StatelessWidget {
  const run_app_class({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image(image: AssetImage('images/c.png')),
        ),
      ),
    );
  }
}

class run_app_two extends StatelessWidget {
  const run_app_two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Rating(),
        ),
      ),
    );
  }
}

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Rating: $rating'),
        ...List.generate(
            5,
            (i) => IconButton(
                  icon: Icon(
                    Icons.star,
                    color: rating >= i + 1 ? Colors.red : Colors.grey,
                  ),
                  onPressed: () => setState(() => rating = i + 1),
                ))
      ],
    );
  }
}
