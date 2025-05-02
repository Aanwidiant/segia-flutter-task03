import 'package:flutter/material.dart';
import 'package:segia_flutter_task03/common/app_colors.dart';
import 'package:segia_flutter_task03/ui/widgets/custom_button_widget.dart';
import 'package:segia_flutter_task03/ui/widgets/info_row_widget.dart';
import 'package:segia_flutter_task03/ui/widgets/logo_widget.dart';
import 'package:segia_flutter_task03/ui/widgets/password_row_widget.dart';

class ResultRegisterPage extends StatefulWidget {
  const ResultRegisterPage({super.key});

  @override
  State<ResultRegisterPage> createState() => _ResultRegisterPageState();
}

class _ResultRegisterPageState extends State<ResultRegisterPage> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColors.background,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Card(
                        elevation: 2,
                        color: AppColors.snowWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InfoRowWidget(
                                label: 'Username',
                                value: args['username'] ?? '',
                              ),
                              const SizedBox(height: 12),
                              InfoRowWidget(
                                label: 'Email',
                                value: args['email'] ?? '',
                              ),
                              PasswordRowWidget(
                                label: 'Password',
                                value: args['password'] ?? '',
                                showPassword: _showPassword,
                                onToggle: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Button
                    CustomButtonWidget(
                      text: 'Oke',
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                    ),
                  ],
                ),
              ),
              // Logo
              const Positioned(top: 0, right: 0, child: LogoWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
