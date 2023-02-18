
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({
    Key? key,
    required this.nameController,
    this.labelText,
    this.prefixIcon,
  }) : super(key: key);

  final TextEditingController nameController;
  String? labelText;
  Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      child: TextFormField(
        controller: nameController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade100),
          ),
          prefixIcon: prefixIcon,
          contentPadding: const EdgeInsets.all(8),
          labelText: labelText,
        ),
      ),
    );
  }
}
