import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class liked extends StatelessWidget {
  liked({super.key});
  bool isLiked = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: 20,
      isLiked: isLiked,
      likeCount: count,
      likeBuilder: (isLiked) {
        final Color = Colors.black;
      },
      countBuilder: ((likeCount, isLiked, text) {
        final Color = Colors.red;
        return Text(text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black));
      }),
    );
  }
}
