import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  final String emoji;
  final String emojiText;

  const Emoji({super.key, required this.emoji, required this.emojiText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 13, 146, 212),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            emoji,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          emojiText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
