Intro to OOP

Modern applications basically all do the same thing: they give us (smart humans) a way to process and collaborate over large data sets.
OOP gives us a nice way to model our data after real-world objects. It makes code easy to read, easy to reason about, and highly reusable.
Example : Point of sale(pos)

What kinds of classes do you think you'd need to represent "things" (or data)? What kind of "things" does a POS app need to know about? Perhaps we need classes to represent a Customer, Business, Employee, Product, and Money. Those are all classes that represent real-world things.
question like:
If we're selling bananas, should we use a Product class and give it a property that describes what type of product it is? Or should we have a Banana class?

We may want a class for Transaction and Sale. In real life, a transaction is a process or event. Should this be represented with a function or a class?

Ultimately, these decisions are up to you, the programmer. There is no single right answer.
My rule of thumb is, "When in doubt, make a new class."
The bottom line is that you can (and, I'd argue, should) make a class that represents any "thing" that isn't obviously an action you can do or a word you'd use to describe some detail of a "thing."
For instance, you (a human) can exchange money with someone. It makes sense to say "I exchange money." It doesn't make sense to say, "I transaction," even though a transaction is an idea. Having a Transaction class makes sense, but an ExchangeMoney class doesn't.

Classes:
all the code you write in Dart will be contained in classes.
And a class is a blueprint for an object. That is, a class describes an object that you can create.
The object itself is what holds any specific data and logic.
class Cat {
    String name;
    String color;
}
The variable declarations above, String name and String color, are called properties or class members. (NB: Members can also refer to functions, getters and setters on classes.)


1. Properties and methods

Properties:
Properties are variables of any type defined on the class.
class Cat {
  String name; // property
  String color; // property
  int age; // property
}
// ussage:
var cat = Cat();
cat.name = 'Wallace';
print(cat.name);

Methods:
Methods are functions on a class that provide behavior for an object.
Instance methods on objects are exposed via instances of the class.
hey have access to other variables and methods on the instance, as well as the keyword this.
Example:
class Cat {
  String name; // property
  String color; // property
  int age; // property

  void talk() {
   print('meow!');
  }
}

// useage:
var cat = Cat();
cat.talk();

2. Methods: static, private, etc:

You have several options when defining methods on classes. First, let's look at basic examples of each.

class Microwave {
  // basic method
  void startCooking (){}

  // private method
  // this cannot be called from outside the class itself
  // it is not exposed to _instances_ of the class
  void _startTimer() {}

  // a static method isn't tied to an instance
  // rather, it's logically tied to a class.
  // static methods are compile-time constant,
  // so you don't have access to 'this'
  static bool compareWatts(Microwave a, Microwave b) {
    if (a.power > b.power) return -1;
    if (b.power > a.power) return 1;

    // else they're the same
    return 0;
  }
}


class Microwave {
  final int power;

  Microwave(this.power);

  void startCooking() {
    _startTimer();
    print('starting cooking!')
  }

  void _startTimer() {
    print('starting timer!');
  }

  static int compareWatts(Microwave a, Microwave b) {
    if (a.power > b.power) return -1;
    if (b.power > a.power) return 1;

    // else they're the same
    return 0;
  }
}

void main() {
  var averageMicrowave = Microwave(1100);
  var miniMicrowave = Microwave(800);
  var superMicrowave = Microwave(1500);

  // calling a basic instance method
  averageMicrowave.startCooking();

  // calling a static method
  // which you must call on the class, rather than the instance
  print(Microwave.compareWatts(averageMicrowave, superMicrowave));
}

3. Getters and setters
Getters and setters are special methods that provide explicit read and write access to an object's properties.
Getters: Getters are often useful to set computed properties. In other words, instance variables that rely on other, non-constant variables.
class Rectangle {
  final int width, height;

  Rectangle(this.width, this.height);

  // This computed property is treated like a function
  // that returns a value.
  int get area => width * height;
}

Setters: Setters are similar to getters in that they're syntactic sugar for methods.
But, setters don't provide read-access to a variable. They're used to set the value of a variable and nothing else.
example:
class Rectangle {
  final int width, height;

  Rectangle(this.width, this.height);

  int get area => width * height;

   // Use a private variable to
   // expose the value with a getter;
   Point _center;
   Point get center => _center;
   set center(Point origin) {
     _center = Point(
       origin.x + width / 2,
       origin.y + height / 2,
     );
   }
}

void main() {
  var rectangle = Rectangle(12,6);
  print(rectangle.area);
  // The setter will calculate the center based on what we tell it is the
  // _origin_ (top left corner) of the rectangle on a plot.
  // in this case, we're setting the origin at (4,4).
  rectangle.center = Point(4,4);
  print(rectangle.cernter);
}


4. Extending class (inheritance)

You can inherit from or extend a class using the extends keyword.

This allows you share properties and methods between classes that are similar, but not exactly the same.
https://flutterbyexample.com/lesson/extending-classes-inheritance

5. Initializer lists and final properties

Final:
Class fields in Dart can be final.
Marking a field as final tells Dart that this variable can never be re-assigned.
Importantly, this doesn't mean that the variable must be declared and assigned at the same time. Often, you'll use the final keyword for class properties, and assign them a value in the constructor.
class Rectangle {
  // these are assigned in the constructor,
  // and can never be changed.
  final int width;
  final int height;

  Rectangle(this.width, this.height);
}
Side note: This square is said to be immutable. All of it's field are final, so it cannot be changed once created.

Initializer Lists:
An initializer list allows you to assign properties to a new instance variables before the constructor body runs, but after creation.
This is handy when you want to set a final variables value, but the value isn't a compile-time constant. For instance:
main() {
  final rectangle = Rectangle(2, 5);
}

class Rectangle {
  final int width;
  final int height;
  final int area;

  The area of the rectangle uses the `width` and `height`
  variables, but cannot be done outside of the constructor
  because the class doesn't know what the width and height
  are equal to until an instance is created.
  Rectangle(this.width, this.height)
    : area = width * height {
      print(area);
    }
}


6. Singleton:

   The singleton pattern is a pattern used in object-oriented programming which ensures that a class has only one instance and also provides a global point of access to it.
   Sometimes it's important for a class to have exactly one instance, or you might force your app into a weird state.
   For example, you only want one instance of a class that represents your local storage, or you may end up with two different sources of data, which are out of sync.
   The idea is that anywhere in your code that you call MyClass(), it will return the same instance of that class, with the same state, etc.
   Thanks to factory constructors, implementing the singleton pattern in Dart is not only possible, but simple and flexible.
   class FileSystemManager {
     static final FileSystemManager _instance = FileSystemManager._internal();

     // using a factory is important
     // because it promises to return _an_ object of this type
     // but it doesn't promise to make a new one.
     factory FileSystemManager() {
       return _instance();
     }

     // This named constructor is the "real" constructor
     // It'll be called exactly once, by the static property assignment above
     // it's also private, so it can only be called in this class
     FileSystemManager._internal() {
       // initialization logic
     }

     // rest of class as normal, for example:
     void openFile() {}
     void writeFile() {}
   }

   https://flutterbyexample.com/lesson/singletons

7. Abstract class(and interfaces)
   - An abstract class, which is similar to an interface, defines a class that cannot be instantiated.
   Abstract classes keep your code honest and type safe.

   It ensures that all implementation subclasses define all the properties and methods that abstract class defines, but leaves the implementation to each subclass.

   example: https://flutterbyexample.com/lesson/abstract-classes-and-interfaces

8. Mixins:
   Mixins are a way of reusing a class’s code in different class hierarchies.
   For example, you might have a class called Employee which has methods like clockIn. The code in those classes may be useful for both Bartender and Nurse. But, now imagine you're introducing a class called Doctor.
   You probably have some functionality on Nurse (such as a method called takeTemperature) that you'd like on Doctor, but not that you want to add to Employee. This is a great place to use a mixin called Medical.
   class Employee {
     void clockIn() {...}
   }

   mixin Medical {
      int takeTemperature {...}
   }

   // use mixins on your classes via the `with` keyword
   class Nurse extends Employee with Medical {}
   class Doctor extends Employee with Medical {
     performSurgery() {...}
   }
   class Bartender extends Employee {}

   With this architecture, your bartender can 'clock in', but cannot 'takeTemperature'. Both Nurse and Doctor can do both, and the doctor can performSurgery.

9. Extension methods

   Extension methods are new as of Dart 2.7. They allow you to add functionality to existing libraries and classes.
   For example, you can add extra functionality to the Dart core String library, that are only available in your app.
   extension on DateTime {
     String get humanize {
       // you have access to the instance in extension methods via 'this' keyword.
       return "${this.day}/${this.month}/${this.year}";
     }
   }

   void main() {
     final dateTime = DateTime.now();
     print(dateTime.humanize);
