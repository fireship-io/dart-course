//  Importing 'constructors' class from the same folder used earlier
import 'constructors.dart' as External;
//  Importing 'as' will allow us to use our own classes which have the same names as the classes imported from 'constructors'. For example, 'Circle'. Here 'External' is called the namespace
import 'constructors.dart' hide Circle;
//  Since we will be defining another 'Circle' class here, we do not want to import 'Circle' from constructors
import 'constructors.dart' show Rectangle;
//  'show' is used to import only that specific class (in this case, 'Rectangle') and no other classes from 'constructors'

class Circle {}

void main() {
  Circle();
  External.Circle(radius: 10);
  //  Here we must call 'Circle' class from 'External' namespace, since we have 'hidden' constructor's 'Circle' class

  Rectangle(1, 2);
}
