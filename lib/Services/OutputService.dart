import 'dart:convert';

import 'package:http/http.dart' as http;
fetchOuput(String id) async{
  var res= await http.get(Uri.parse("http://192.168.229.114:3000/input/${id}"));
  var output= jsonDecode(res.body);
  return output['data'];
}