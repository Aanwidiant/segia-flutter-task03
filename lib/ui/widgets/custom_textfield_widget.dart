import 'package:flutter/material.dart';

class CustomTextfieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final bool obscureText;

  const CustomTextfieldWidget({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  CustomTextfieldWidgetState createState() => CustomTextfieldWidgetState();
}

class CustomTextfieldWidgetState extends State<CustomTextfieldWidget> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
      child: TextFormField(
        controller: widget.controller,
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hintText,
          border: const OutlineInputBorder(),
          suffixIcon:
              widget.label == 'Password'
                  ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                  : null,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '${widget.label} tidak boleh kosong';
          }
          if (widget.label == 'Email' &&
              !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
            return 'Format email tidak valid';
          }
          if (widget.label == 'Password') {
            if (value.length < 8) {
              return 'Password harus memiliki minimal 8 karakter.';
            }
            if (!value.contains(RegExp(r'[A-Z]'))) {
              return 'Password harus memiliki minimal satu huruf besar.';
            }
            if (!value.contains(RegExp(r'[a-z]'))) {
              return 'Password harus memiliki minimal satu huruf kecil.';
            }
            if (!value.contains(RegExp(r'[0-9]'))) {
              return 'Password harus memiliki minimal satu angka.';
            }
            if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
              return 'Password harus memiliki minimal satu simbol.';
            }
          }
          return null;
        },
      ),
    );
  }
}
