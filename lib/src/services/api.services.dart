import 'package:blupy/src/utils/constantes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class ApiServices {



  Future<Map<String,dynamic>> login(String idNumber, String password) async{
    try {
      http.Response res = await http.post(
        Uri.parse('${Constantes.apiUrl}/login'),
        body: jsonEncode({
          'idNumber': idNumber,
          'password': password,
        }),
        headers:{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'x-api-key': Constantes.xApiKey
        },
      );

      var json = jsonDecode(res.body);
      Map<String,dynamic> respuesta = {"success":false};
      if(json['success']){
        respuesta = {"success": json['success'], "results": json["results"]};
      }else{
        respuesta = {"success":false, "message": json["message"]};
      }
      return respuesta;
      
    } catch (e) {
       Map<String,dynamic> error = {"success": false, "message": e.toString()};
      return error;
    }
  }

}