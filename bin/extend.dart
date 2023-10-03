void main() {
  Pug tuffy = Pug();
  tuffy.walk();
}

abstract class Dog {
  //  Declared as 'abstract' since it is used only to provide a template for other classes (in this case 'Pug' class)
  void walk() {
    print('walking...');
  }
}

class Pug extends Dog {
  String breed = 'pug';

  @override
  //  @override is Used to mention that method from parent class is being overridden by this function. If it is not used, Dart gives a warning
  //  Used in Flutter for 'dispose' method - original method is used to clear off an object, but the overridden method can use the original method + do additional disposal functions specific to that class
  void walk() {
    super.walk();
    print('I am tired. Stopping now.');
  }
}
