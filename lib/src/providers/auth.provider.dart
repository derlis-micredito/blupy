import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier{
  
  bool _isLogged = false;
  String _token = "";

  




  bool get isLogged => _isLogged;
  String get token => _token;


  void setIsLogged (bool valorBoleando){
    _isLogged = valorBoleando;
    notifyListeners();
  }

  void setToken (String str){
    _token = str;
    notifyListeners();
  }

}