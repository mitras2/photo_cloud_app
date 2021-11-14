import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {

  final String label;
  final Function validator;
  final TextEditingController? controller;
  bool enabled;

  LoginInput({Key? key, required this.label, required this.validator, this.controller, this.enabled = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Text(label),
          TextField(
            controller: controller,
            enabled: enabled,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: label,
            ),

          )
        ],
      ),
    );
  }
}
