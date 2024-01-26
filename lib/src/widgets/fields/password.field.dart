import 'package:blupy/src/utils/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordField extends StatelessWidget {
  
  final TextEditingController? controller;
  final String? label;
  final String? errorText;
  const PasswordField({super.key, this.label, this.controller, this.errorText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
      constraints: const BoxConstraints(
        maxWidth: 480
        ),
      child: TextField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
          errorText: errorText,
          labelText: label,
          labelStyle: GoogleFonts.poppins( textStyle: const TextStyle(fontSize: 14, color: Colors.black)  ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Constantes.secondaryColor)
          )
        ),
      ) ,
    );
  }
}