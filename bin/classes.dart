void main() {
  Basic thing = Basic(55);
  print(thing.id);
  thing.doStuff();

  Basic
      .helper(); //  Static function can be called directly from class (instead of using object)
}

//  Class name should always start with capital letter
class Basic {
  int id;

  Basic(this.id);

  doStuff() {
    print('Hello my ID is $id');
  }

  static helper() {} //  Static allows function to be called globally from class. Useful for global functions which does not need internal state of object
}
