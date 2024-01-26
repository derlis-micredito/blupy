import 'package:blupy/src/controllers/login.controller.dart';
import 'package:blupy/src/utils/constantes.dart';
import 'package:blupy/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constantes.primaryColor,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Constantes.primaryColor),
        child: _isLoading ? _cargando(context) : Column(
          children: [_cabezera(context), _formulario(context)],
        ) ,
      )),
    );
  }

  Widget _cargando(BuildContext context){
    return const Center(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [CircularProgressIndicator( color: Colors.white,), SubTitleSecondary('Cargando...', color: Colors.white,)],
    ));
  }
  

  Widget _cabezera(BuildContext context) {
    return (
      Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fondo.png'),
          fit: BoxFit.cover,
        ),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: const Image(
            image: AssetImage('assets/logo.png'),
            width: 100,
          ),
          ),
          const TitlePrimary(
            "¡Bienvenido!",
            color: Colors.white,
          ),
          const SubTitleSecondary("Si ya sos cliente, ingresá tus datos de acceso; si no, registrate con nosotros.", color: Colors.white,)
        ],
      ),
    ));
  }

  String errorCedula = '';
  String errorPassword = '';
  
  final LoginController control = LoginController();

  Widget _formulario(BuildContext context) {
    
    

    void login() {
      if(control.idNumber.text.isEmpty){
        setState(() {
          errorCedula = 'Ingrese su nro de cédula';
        });
        return;
      }
      if(control.password.text.isEmpty){
        setState(() {
          errorPassword = 'Ingrese su contraseña';
        });
        return;
      }
       setState(() {
          errorCedula = '';
          errorPassword = '';
          _isLoading = true;
        });
      control.trylogin();
      setState(() {
        _isLoading = false;
      });
    }

    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PrimaryField(
                label: "Número de cédula",
                controller: control.idNumber,
                errorText: errorCedula.isEmpty ? null : errorCedula ,
              ),
              PasswordField(
                label: "Contraseña",
                errorText:errorPassword.isEmpty ? null :errorPassword ,
                controller: control.password,
              ),
              TextLink('Olvide mi contraseña', onTap: () {
                Navigator.pushNamed(context, 'olvide');
              }),
              PrimaryButton(
                text: 'INGRESAR',
                onTap: login,
              ),
              SecondaryButton(
                text: 'REGISTRARME',
                onTap: () {
                  Navigator.pushNamed(context, 'registerA');
                },
              ),
              const SubTitleSecondary('Mi Crédito S.A. ${Constantes.versionApp}')
            ],
          ),
        ),
      ),
    );
  }
}
