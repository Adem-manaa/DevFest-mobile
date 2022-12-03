import 'dart:convert';

import 'package:http/http.dart' as http;
fetchDevices() async{
  var res= await http.get(Uri.parse("http://192.168.229.114:3000/device/1"));
  var output= jsonDecode(res.body);
  return output['data'];
}