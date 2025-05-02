import 'package:flutter/material.dart';

class HeroContentWidget extends StatelessWidget {
  final String imagePath;

  const HeroContentWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 240,
            child: Text(
              'Clean',
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFCE7A),
              ),
            ),
          ),
          SizedBox(
            width: 240,
            child: RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
                children: const [
                  TextSpan(
                    text: 'laun',
                    style: TextStyle(color: Color(0xFF0A0A0A)),
                  ),
                  TextSpan(
                    text: 'dry',
                    style: TextStyle(color: Color(0xFFFFCE7A)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 36),
          Image.asset(imagePath, width: 240, fit: BoxFit.cover),
        ],
      ),
    );
  }
}
