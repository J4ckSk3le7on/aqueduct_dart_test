import 'package:library/library.dart';
import 'package:library/provider/example_provider.dart';

class ExampleController extends ResourceController {

  @Operation.get()
  Future<Response> getExample() async {
      return Response.ok(ExampleProvider().getData);
    }

}