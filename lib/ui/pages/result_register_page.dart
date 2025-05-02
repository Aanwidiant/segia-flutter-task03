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
          color: AppColors.primaryLight,
          padding: const EdgeInsets.all(24),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
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
                            const SizedBox(height: 12),
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
                    const SizedBox(height: 12),
                    CustomButtonWidget(
                      text: 'OKE',
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
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
