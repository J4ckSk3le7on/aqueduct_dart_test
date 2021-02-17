import 'package:library/library.dart';
import 'package:library/provider/example_provider.dart';

class ExampleController extends ResourceController {

  @Operation.get()
  Future<Response> getExample() async {
    return Response.ok(ExampleProvider().getData);
  }

}

class OtherExampleController extends ResourceController {

  @Operation.get()
  Future<Response> getOtherExample() async {
    return Response.ok("THIS WORK");
  }

}