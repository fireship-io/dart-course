import 'dart:async';

void main() {
  var delay = Future.delayed(Duration(seconds: 5));
  //  Runs asynchronously after a delay of 5 seconds for 1 time

  delay
      .then((value) =>
          print('I have been waiting')) //  If the event happens successfully
      .catchError((err) => print(err)); //  If the event is unsuccessful

  print(runInTheFuture());
}

Future<String> runInTheFuture() async {
  //  'async' is sufficient. No need to declare as a Future, since 'async' automatically tells Dart compiler that a Future is to be returned
  var data = await Future.value('world');
  //  Await pauses execution until the condition is resolved. In this case, no need to use 'then' keyword
  // Used extensively in Flutter when you need to pause until an API returns a value (e.g.)

  return 'hello $data';
}
