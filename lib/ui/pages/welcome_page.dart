import 'package:flutter/material.dart';
import 'package:segia_flutter_task03/common/app_colors.dart';
import 'package:segia_flutter_task03/ui/widgets/custom_button_widget.dart';
import 'package:segia_flutter_task03/ui/widgets/hero_content_widget.dart';
import 'package:segia_flutter_task03/ui/widgets/logo_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColors.primaryLight,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const HeroContentWidget(
                      imagePath: 'assets/images/washing_machine.png',
                    ),
                    const SizedBox(height: 32),
                    CustomButtonWidget(
                      text: 'Create New Account',
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                    ),
                  ],
                ),
              ),
              const Positioned(top: 0, right: 0, child: LogoWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
