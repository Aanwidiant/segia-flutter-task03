import 'package:flutter/material.dart';
import 'package:segia_flutter_task03/common/app_colors.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const Text(':  ', style: TextStyle(fontSize: 16)),
          Expanded(
            child: Text(
              showPassword ? value : '*' * value.length,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              showPassword ? Icons.visibility : Icons.visibility_off,
              color: AppColors.primary,
            ),
            onPressed: onToggle,
            padding: EdgeInsets.symmetric(vertical: 8.0),
          ),
        ],
      ),
    );
  }
}
