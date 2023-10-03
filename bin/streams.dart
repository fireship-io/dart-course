import 'dart:async';

void main() {
  var stream = Stream.fromIterable([1, 2, 3]); //.asBroadcastStream();
  //  Stream is used to handle multiple future events as they unfold over different timelines (e.g., listening to an external database)
  //  Here stream will listen to a stream of 3 events based on numbers in list
  //  Stream can be considered a list that unfolds over time
  //  Here it performs each of the following functions for each element of list individually in sequence(e.g., first for 1st element, then 2nd, etc.)

  //  Listen to stream and print the event occuring. Stream can only be listened to 1 time. If another listener is present, it will not hear the same event as 1st listener
  stream.listen((event) => print(event));

  //  Multiply each event by 2 & print out.
  stream.map((event) => event * 2).listen((event) => print(event));

  //streamFun();
  //  Since streamFun also has another stream, this stream will be combined with execution of streamFun's stream. E.g., First element of stream will go through all the operations until streamFun(), then the first element of streamFun stream will go through the next functions
}

streamFun() async {
  var stream = Stream.fromIterable([4, 5, 6]);

  await for (int value in stream) {
    print(value);
  }
}
