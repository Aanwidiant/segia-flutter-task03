import 'package:flutter/material.dart';
import 'package:segia_flutter_task03/common/app_colors.dart';

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
                color: AppColors.primary,
              ),
            ),
          ),
          SizedBox(
            width: 240,
            child: Align(
              alignment: Alignment.centerRight,
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
                  children: const [
                    TextSpan(
                      text: 'laun',
                      style: TextStyle(color: AppColors.textPrimary),
                    ),
                    TextSpan(
                      text: 'dry',
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ],
                ),
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
