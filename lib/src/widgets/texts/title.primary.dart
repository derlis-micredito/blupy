
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TitlePrimary extends StatelessWidget {
  
  final Color? color;
  final String text;
  const TitlePrimary(this.text,{super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Text(text, style: GoogleFonts.poppins( textStyle:  TextStyle( fontSize: 28, color: color ?? Colors.black, fontWeight: FontWeight.bold)  )) ,
    );
  }
}