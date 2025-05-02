import 'package:flutter/material.dart';

class InfoRowWidget extends StatelessWidget {
  final String label;
  final String value;

  const InfoRowWidget({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          child: Text(label, style: const TextStyle(fontSize: 18)),
        ),
        const Text(':  ', style: TextStyle(fontSize: 18)),
        Expanded(child: Text(value, style: const TextStyle(fontSize: 18))),
      ],
    );
  }
}
