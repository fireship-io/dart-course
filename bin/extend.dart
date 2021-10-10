void main() {}

abstract class Dog {
  void walk() {
    print('walking...');
  }
}

class Pug extends Dog {
  String breed = 'pug';

  @override
  void walk() {
    super.walk();
    print('I am tired. Stopping now.');
  }
}
