void main() {
  Box<String> box1 = Box('cool');

  Box<double> box2 = Box(2.23);

  Box<List<int>> box3 = Box([1, 2, 3]);
}

class Box<T> {
  T value; //  Value is a generic - can be any type of variable - double, list, int, etc.

  Box(this.value);

  T openBox() {
    return value;
  }
}
