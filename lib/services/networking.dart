import 'dart:convert';

import 'package:http/http.dart' as http;
class NetworkHelper{
  final String url;

  NetworkHelper(this.url);
  Future getData() async {
    Uri myUri = Uri.parse(
        url);

    http.Response response = await http.get(myUri);

    if(response.statusCode==200){
      String data = response.body;
      print(data);
      return jsonDecode(data);
    }else{
      print(response.statusCode);
    }
  }
}