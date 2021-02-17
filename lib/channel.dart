import 'controller/example_controller.dart';
import 'library.dart';

class LibraryChannel extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();
    router
      .route("/example")
      .link(() => ExampleController());

      //ERROR: Converting object to an encodable object failed: Closure: () => Future<dynamic> from Function 'getData':
      //. #0      _JsonStringifier.writeObject (dart:convert/json.dart:687:7)

    router
      .route("/example/2")
      .link(() => OtherExampleController());

      //THIS WORK SO FUCK1NG GREAT

    return router;
  }

}