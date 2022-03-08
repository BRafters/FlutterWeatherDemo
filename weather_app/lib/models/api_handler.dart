import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class APIHandler {
  final String _url;

  /// Takes the API URL
  APIHandler(this._url);

  /// Makes an HTTP request to the API
  Future<void> makeRequest() async {
    var url = Uri.parse(_url);
    var client = http.Client();

    try {
      var res = await client.get(url);
      print(res.statusCode);
      if (res.statusCode == 200) {
        String data = res.body;
        print(data);
      }
    } catch(e){
      print(e);
    }
    finally{
      client.close();
    }
  }
}