import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {

  final String label;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  bool enabled;

  LoginInput({Key? key, required this.label, required this.validator, this.controller, this.enabled = true}) : super(key: key);

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
