void main() {
  var rect = Rectangle(25, 30);

  const cir = Circle(radius: 50, name: 'foo');

  var p1 = Point.fromMap({'lat': 23.0, 'lng': 50.0});
  var p2 = Point.fromList([23.0, 50.0]);
  //  2 different ways of constructing the object with the same values
  //  Frequently used in Dart since multiple ways of creating same object
  print(p1);
  print(p2);
}

class Rectangle {
  final int width;
  final int height;
  String? name;
  late final int area;
  //  late keyword is used since the value is calculated after the width and height values are assigned later on

  // Shape(width, height) {
  //   this.width = width;
  //   this.height = height;
  // }

  Rectangle(this.width, this.height, [this.name]) {
    //  this.name is an optional parameter, hence it is put in square brackets
    area = width * height;
  }
}

class Circle {
  const Circle({required int radius, String? name});
  //  Here name is declared as String? since it is an optional character, hence is nullable
}

class Point {
  double lat = 0;
  double lng = 0;

  // Named constructor
  Point.fromMap(Map data) {
    lat = data['lat'];
    lng = data['lng'];
  }

  Point.fromList(List data) {
    lat = data[0];
    lng = data[1];
  }
}
