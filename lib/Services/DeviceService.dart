import 'package:http/http.dart' as http;
featchDevices(int id) async{
  var url= Uri.http('localhost:3000/device/${id}');
  var res= await http.get(url);
  return res.body;
}