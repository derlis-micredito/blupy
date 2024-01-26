import 'package:blupy/src/providers/auth.provider.dart';
import 'package:blupy/src/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AuthProvider())
  ],
  child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login':(context) => const LoginScreen(),
        'olvide':(context) => const OlvideScreen(),
      },
    );
  }
}
