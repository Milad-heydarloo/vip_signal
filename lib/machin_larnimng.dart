import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
