import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final TextInputType textInputType;
  final String hintText;
  const TextFieldInput({Key? key, required this.textEditingController, this.isPass = false, required this.textInputType, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBoarder= OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return TextField(
      controller:textEditingController ,
      decoration: InputDecoration(
        hintText: hintText,
        border: inputBoarder,
        focusedBorder: inputBoarder,
        enabledBorder: inputBoarder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
