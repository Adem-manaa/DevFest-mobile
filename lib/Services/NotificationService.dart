import 'package:http/http.dart' as http;
featchNotification(int id) async{
  var url= Uri.http('localhost:3000/notification/${id}');
  var res= await http.get(url);
  return res.body;
}