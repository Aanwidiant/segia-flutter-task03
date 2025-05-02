import 'package:flutter/material.dart';
import 'package:segia_flutter_task03/common/app_colors.dart';
import 'package:segia_flutter_task03/ui/widgets/custom_button_widget.dart';
import 'package:segia_flutter_task03/ui/widgets/custom_textfield_widget.dart';
import 'package:segia_flutter_task03/ui/widgets/logo_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColors.primaryLight,
          child: Stack(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomTextfieldWidget(
                          controller: usernameController,
                          label: 'Username',
                          hintText: 'Masukkan username',
                        ),
                        CustomTextfieldWidget(
                          controller: emailController,
                          label: 'Email',
                          hintText: 'Masukkan email',
                        ),
                        CustomTextfieldWidget(
                          controller: passwordController,
                          label: 'Password',
                          hintText: 'Masukkan password',
                          obscureText: true,
                        ),
                        const SizedBox(height: 12),
                        CustomButtonWidget(
                          text: 'Submit',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(
                                context,
                                '/result',
                                arguments: {
                                  'username': usernameController.text,
                                  'email': emailController.text,
                                  'password': passwordController.text,
                                },
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
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
