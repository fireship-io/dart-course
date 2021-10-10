void main() {
  Basic thing = new Basic(55);
  thing.id;
  thing.doStuff();

  Basic.helper();

  // Challange. Create a class that represents a Dog.
  // A dog has a method named bark that prints its name
}

class Basic {
  int id;

  Basic(this.id);

  doStuff() {
    print('Hello my ID is $id');
  }

  static helper() {}
}
