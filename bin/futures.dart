import 'dart:async';

void main() {
  var delay = Future.delayed(Duration(seconds: 5));

  delay
      .then((value) => print('I have been waiting'))
      .catchError((err) => print(err));

  runInTheFuture();
}

Future<String> runInTheFuture() async {
  var data = await Future.value('world');

  return 'hello $data';
}
