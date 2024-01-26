import 'package:blupy/src/utils/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const SecondaryButton({super.key,required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 24),
      constraints: const BoxConstraints(
        maxWidth: 480,
      ),

      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            width: 1,
            color: Constantes.primaryColor
          ),
          backgroundColor: const Color(0xFFFFFFFF),
          padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          
        ),
        child:  Text(text, style: GoogleFonts.poppins( textStyle: TextStyle(fontSize: 14, color: Constantes.primaryColor)  )),
      ),
    );
  }
}