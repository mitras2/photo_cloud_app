import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {

  final String label;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  bool enabled;
  bool obscureText;

  LoginInput({
    Key? key,
    required this.label,
    required this.validator,
    this.controller,
    this.enabled = true,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label + ":"),
          TextFormField(
            controller: controller,
            enabled: enabled,
            validator: validator,
            // autofillHints: const [AutofillHints.email, AutofillHints.username],
            obscureText: obscureText,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: label,
            ),
          )
        ],
      ),
    );
  }
}
