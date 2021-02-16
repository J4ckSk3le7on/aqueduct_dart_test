import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:library/model/example_model.dart';

class ExampleProvider {

  final String _baseUrl = "firestore.googleapis.com";

  Future<Map> _processResp(Uri url) async {
    final response = await http.get(url);
    final data = MyManagedObject();
    Map<String, dynamic> decodedData = jsonDecode(response.body);
    return decodedData;
  }

  Future<Map> getData() async {
    final _url = Uri.https(_baseUrl, "/v1/projects/dart-server-example/databases/(default)/documents/i_dont_f_know");
    final resp = await _processResp(_url);
    return resp;
  }

}