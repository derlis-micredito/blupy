import 'package:flutter/material.dart';
import 'package:blupy/src/screens/screens.dart';

class RoutesMain {
  
  Map<String, Widget Function(BuildContext)> rutas (BuildContext context){

    return {
      'login':(context) => const LoginScreen(),
      'olvide':(context) => const OlvideScreen(),
      'registerA': (context) => const RegisterAScreen()
    };
  }
}