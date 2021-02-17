import 'dart:async';
import 'dart:convert';
import 'package:library/library.dart';
import 'package:http/http.dart' as http;

class ExampleController extends ResourceController {

  final String _baseUrl = "firestore.googleapis.com";

  @Operation.get()
  Future<Response> getExample() async {
    final _url = Uri.https(_baseUrl, "/v1/projects/dart-server-example/databases/(default)/documents/i_dont_f_know");
    final response = await http.get(_url);
    final decodedData = jsonDecode(response.body);
    return Response.ok(
      decodedData
    );
  }

}

class OtherExampleController extends ResourceController {

  @Operation.get()
  Future<Response> getOtherExample() async {
    return Response.ok("THIS WORK");
  }

}