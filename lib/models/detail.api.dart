import 'dart:convert';
import 'package:untitled6/models/detail.dart';
import 'package:http/http.dart' as http;

class detailApi{
static Future<List<detail>> getDetail() async{
  var client =http.Client();
  var uri=Uri.parse('https://jsonplaceholder.typicode.com/users');
  var response =await client.get(uri);
  var json=response.body;
  return detailFromJson(json);
  // final response =await http.get(uri
  //
  // );
  // Map data=jsonDecode(response.body);
  // List _temp=[
  //
  // ];
  // for (var i in data['user']){
  //   _temp.add(i['user']);
  // }
  //
  // return detail.detailfromSnapshot(_temp);
}
}