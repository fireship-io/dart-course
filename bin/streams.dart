import 'dart:async';

void main() {
  var stream = Stream.fromIterable([1, 2, 3]); //.asBroadcastStream();

  stream.listen((event) => print(event));

  stream.map((event) => event * 2).listen((event) => print(event));

  streamFun();
}

streamFun() async {
  var stream = Stream.fromIterable([4, 5, 6]);

  await for (int value in stream) {
    print(value);
  }
}
