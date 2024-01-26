import 'package:blupy/src/widgets/buttons/secondary.button.dart';
import 'package:flutter/material.dart';

class OlvideScreen extends StatelessWidget {
  const OlvideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SecondaryButton(text: 'Atras', onTap: () {
            Navigator.pop(context);
          },)
        ],
      )),
    );
  }
}
