import 'package:flutter/material.dart';

class PasswordRowWidget extends StatelessWidget {
  final String label;
  final String value;
  final bool showPassword;
  final VoidCallback onToggle;

  const PasswordRowWidget({
    super.key,
    required this.label,
    required this.value,
    required this.showPassword,
    required this.onToggle,
  });

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
        Expanded(
          child: Text(
            showPassword ? value : '*' * value.length,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        IconButton(
          icon: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey[700],
          ),
          onPressed: onToggle,
        ),
      ],
    );
  }
}
