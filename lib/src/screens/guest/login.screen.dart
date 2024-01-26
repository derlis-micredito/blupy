import 'package:blupy/src/controllers/login.controller.dart';
import 'package:blupy/src/widgets/texts/text.link.dart';
import 'package:blupy/src/widgets/widgets.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});



  @override
  Widget build(BuildContext context) {
  final LoginController control = LoginController();
    void login(){
      control.trylogin();
    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(children: [
                PrimaryField(label:"Número de cédula", controller: control.idNumber,),
                PasswordField(label: "Contraseña", controller:  control.password,),
              ],),
            ),
            TextLink('Olvide mi contraseña', onTap: (){ Navigator.pushNamed(context,'olvide'); }),  
            Center(
              child: Column(
                children: [
                  PrimaryButton(text: 'INGRESAR',onTap: login,),
                ],
              ),
            )
          ],
        )
      ),
    );
  }




}