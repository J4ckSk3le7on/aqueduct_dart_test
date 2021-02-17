import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ExampleProvider {

  final String _baseUrl = "firestore.googleapis.com";

  Future<dynamic> _processResp(Uri url) async {
    final response = await http.get(url);
    final decodedData = jsonDecode(response.body);
    return decodedData;
  }

  Future<dynamic> getData() async {
    final _url = Uri.https(_baseUrl, "/v1/projects/dart-server-example/databases/(default)/documents/i_dont_f_know");
    final resp = await _processResp(_url);
    return resp;
  }

}