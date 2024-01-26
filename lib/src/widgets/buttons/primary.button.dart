import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const PrimaryButton({super.key,required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6,horizontal: 24),
      constraints: const BoxConstraints(
        minWidth: 320,
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF2500CF),
          padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
          )
        ),
        child:  Text(text, style: GoogleFonts.poppins( textStyle: const TextStyle(fontSize: 15, color: Colors.white)  )),
      ),
    );
  }
}