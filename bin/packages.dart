import 'constructors.dart' as External;
import 'constructors.dart' hide Circle;
import 'constructors.dart' show Rectangle;

class Circle {}

void main() {
  Circle();
  External.Circle(radius: 10);

  Rectangle(1, 2);
}
