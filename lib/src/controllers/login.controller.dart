

import 'package:blupy/src/services/api.services.dart';
import 'package:flutter/material.dart';

class LoginController{

  TextEditingController idNumber = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<Map<String, dynamic>> trylogin (){
    var api = ApiServices();
    return  api.login(idNumber.text, password.text);
  }
}