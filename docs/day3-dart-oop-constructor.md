Constructors:

Constructors are used to create objects with pre-determined values for the properties.
Constructors come in three flavors:

1. Default constructors or no-arg Constructor: The default constructors are those constructors that don’t have any parameters in it. Thus, if a constructor which don’t have any parameter then it will be a type of default constructor.
class Gfg{
    
  // Creating Constructor
  Gfg() {
    print('This is the default constructor');
  }
}

2. Parameterized Constructor or standard : In Dart, you can also create a constructor having some parameters. These parameters will decide which constructor will be called and which will be not. Those constructors which accept parameters is known as parameterized constructor. 

class Gfg{
    
  // Creating Parameterized Constructor
  Gfg(int a) {
      
    print('This is the parameterized constructor');
  }
}


Note: You can’t have two constructors with the same name although they have different parameters. The compiler will display an error.
Constructor overloading not in dart OOP. instead of it use named constructor

3. Named Constructor: As you can’t define multiple constructors with the same name, this type of constructor is the solution to the problem. They allow the user to make multiple constructors with a different name.
class_name.constructor_name ( parameters ){
   // Body of Constructor
}

4. Factory constructor
A factory constructor is a constructor that can be used when you don't necessarily want a constructor to create a new instance of your class.
This might be useful if you hold instances of your class in memory and don't want to create a new one each time (or if the operation of creating an instance is costly).
Another use case is if you have certain logic in your constructor to initialize a final field that cannot be done in the initializer list.
example:
class Car {
	String make;
   	String model;
   	String yearMade;
   	bool hasABS;

   	factory Car.ford(String model, String yearMade, bool hasABS) {
    	return FordCar(model, yearMade, hasABS);
    }
}

class FordCar extends Car {
	FordCar(String model, String yearMade, bool hasABS): super("Ford", model, yearMade, hasABS);

}

Rules for factory constructors:

Factory constructors do use the return key word.
You cannot refer to 'this' within the factory constructor.

Ref link: https://flutterbyexample.com/lesson/factory-methods

5. Advanced Constructors in Dart
Constant constructors and redirecting constructors in Dart
Dart also allows you to create constant constructors. What does this mean exactly? If your class represents an object that will never change after its creation, you can benefit from the use of a constant constructor. You have to make sure that all your class fields are final.
example:
class FordFocus {
   static const FordFocus fordFocus = FordFocus("Ford", "Focus", "2013", true);

   final String make;
   final String model;
   final String yearMade;
   final bool hasABS;

   const FordFocus(this.make, this.model, this.yearMade, this.hasABS);

}

When you want one constructor to call another constructor under the hood, it's referred to as redirecting constructors.
class Car {
	String make;
   	String model;
   	String yearMade;
   	bool hasABS;

   	Car(this.make, this.model, this.yearMade, this.hasABS);

   	Car.withoutABS(this.make, this.model, this.yearMade): this(make, model, yearMade, false);
}



