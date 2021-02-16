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

    return router;
  }
}