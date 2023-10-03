void main() {
  var e = Elephant('Bob');

  // works everywhere
  e.sayHi();

  // only works in this file
  e._saySecret();
}

//  abstract class Elephant - 'abstract' is used to make a class which cannot be instantiated, but is there for interface
class Elephant {
  // Public interface
  final String name;

  // In the interface, but visible only in this library. (private)
  final int _id = 23;

  // Not in the interface, since this is a constructor.
  Elephant(this.name);

  // Public method.
  sayHi() => 'My name is $name.';

  // Private method. - Start function name with '_' to specify it is private
  _saySecret() => 'My ID is $_id.';
}
