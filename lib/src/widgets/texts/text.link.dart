import 'package:blupy/src/utils/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLink extends StatelessWidget {
  
  
  final String text;
  final Function()? onTap;

  const TextLink(this.text,{super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Text(text, style: GoogleFonts.poppins( textStyle: TextStyle( fontSize: 14, color: Constantes.primaryColor, decoration: TextDecoration.underline, decorationColor: Constantes.primaryColor)  )),
      ) ,
    );
  }
}