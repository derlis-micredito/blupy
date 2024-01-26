
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SubTitleSecondary extends StatelessWidget {
  
  final Color? color;
  final String text;
  const SubTitleSecondary(this.text,{super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text(text, style: GoogleFonts.poppins( textStyle:  TextStyle( fontSize: 13, color: color ?? Colors.black, fontWeight: FontWeight.w300)  )) ,
    );
  }
}