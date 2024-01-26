import 'package:blupy/src/utils/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryField extends StatelessWidget {
  
  final TextEditingController? controller;
  final String? label;
  const PrimaryField({super.key, this.label, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
      constraints: const BoxConstraints(
        maxWidth: 480
        ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
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