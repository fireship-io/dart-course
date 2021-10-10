void main() {
  // CONDITIONALS

  String color = 'blue';

  if (color == 'blue') {
    //
  } else if (color == 'green') {
    //
  } else {
    // default
  }

  if (color == 'red') print('hello red!');

  // LOOPS

  for (var i = 0; i < 5; i++) {
    print(i);
    // break;
    // continue;
  }

  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }

  i = 0;
  do {
    print(i);
  } while (i < 5);

  // Assert
  var txt = 'good';
  assert(txt != 'bad');
}
