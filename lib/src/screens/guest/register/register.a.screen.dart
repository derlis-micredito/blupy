import 'package:blupy/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RegisterAScreen extends StatelessWidget {
  const RegisterAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SecondaryButton(text: 'REGISTRO', onTap: () {
            Navigator.pop(context);
          },)
        ],
      )),
    );
  }
}