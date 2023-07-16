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
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
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
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return run_app_two();
                  },
                ));
              },
              child: Text('next')),
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
      backgroundColor: Colors.black,
      body: SafeArea(
        //  child: Rating(),
        //child: Image(image: AssetImage('images/welcome.png')),
        // child:LikeButton(),

        child: SingleChildScrollView(
          //vaghti goshi rotate mishe in singel child baes mishe mohtava scrol beshe
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 110),
                Text('خوش آمدید',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Image(
                  image: AssetImage('images/welcome.png'),
                ),
                //https://m2.material.io/components/buttons
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      minimumSize: Size(200.0, 40.0),
                      primary: Colors.white),
                  onPressed: () {},
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        minimumSize: Size(200.0, 40.0),
                        primary: Colors.black54,
                        backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Text(
                      'ورود',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
              ]),
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
            8,
            (i) => IconButton(
                  disabledColor: Colors.white,
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

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => setState(() => like = !like),
      child: Icon(
        like ? Icons.favorite : Icons.favorite_border,
        color: like ? Colors.red : Colors.grey,
      ),
    );
  }
}

// TextButton(
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                 builder: (BuildContext context) {
//                   return run_app_two();
//                 },
//               ));
//             },
//             child: Text('next'),
//           ),