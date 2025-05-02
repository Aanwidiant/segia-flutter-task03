import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          backgroundColor: const Color(0xFFFFCE7A),
          foregroundColor: Colors.black,
          textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        child: Text(text),
      ),
    );
  }
}

