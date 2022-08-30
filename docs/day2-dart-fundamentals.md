Dart fundamentals

1. Values and variables
The basic building block of information in your Dart program will be variables.Anytime you're working with data in an app, you can store that data in variables.
One of many ways, and the simplest way, to define a variable in Dart is using the var key word.
var message = 'Hello, World';

2. Comments
Dart supports three kinds of comments:
// Inline comments

/*
Blocks of comments. It's not convention to use block comments in Dart.
*/

/// Documentation
///
/// This is what you should use to document your classes.

Generally, documentation comments with three slashes are used for documenting your code. Anything you think will stay in the code forever should use this style of comments. Inline comments are used for brief insights into something on a specific line.

3. Const and final variable 
const - A const variable must be compile-time constant. (const is shorthand for "constant".) Once const is assigned a value, it can never change.
final - final is similar to const, but it doesn't have to be constant at compile time. It can be assigned to any value, including non-const values, but it cannot change once it has been set.
example: 
final name = "Greg";

// doesn't work!
name = "Sarah";

final also must be set when the variable is created, unlike var. For example:

4. Operators

1. Arithmatic = +, -, -expr, * ,/, %, var++, ++var, var—,— var
2. comparision =  ==, !=, > , <, >=, <=
3. Assignment = -=, /=, %=, +=, *=, ~=, >>=, <<= , &=, ^=, |=
Assigning a value to a variable in Dart is done by using the = operator.
4. Logical = &&, ||, !expr
5. Null aware = The three null-aware operators that Dart provides are ?., ??, and ??=.
?. = your program will assign userAge to null, but it won't throw an error,
?? = if that value or variable is null, then use this backup value." It allows you to assign a default value at any given point in your process, and it's super handy:
??= = This last null-safe operator accomplishes a goal pretty similar to the previous one, but the opposite.This operator basically says, "Hey, if this object is null, then assign it to this value. If it's not, just return the object as is":
int x = 5
x ??= 3;
In the second line, x will not be assigned 3, because it already has a value. But like the other null-aware operators, this one seeks to make your code more concise.
6.Type test operator = is, is!, as
7. Bitwise and shift operators = &, |, ^, `expr, <<, >>

5. Control Flow :  if, else, else if

6. Switch statement and case
switch statements are great when there are many possible conditions for a single value. 
These statements compare ints, Strings, and compile-time constants using ==.
In other words, you must compare a value to a value of the same type that cannot change at runtime. 
This switch statement is simply a more concise way of writing an if/else statement. 
It provides a concise way to check for any number of values. It's important, though, to remember that it only works with runtime constants.
this is not valid:
int five = 5;
  switch(five) {
      case(five < 10):
      // do things...
  }
five < 10 isn't constant at compile time and therefore cannot be used. It could be true or false. You cannot do computation within the case line of a switch statement.	
Each case in a switch statement should end with a keyword that exits the switch. If you don't, the switch statement will execute multiple blocks of code.
switch(number) {
  case 1:
    print(number);
    break; // without this, the switch statement would execute case 2 also!
  case 2:
    print(number + 1)
    break;
}
Most commonly, you'll use break or return.
break simply exits out of the switch; it doesn't have any other effect. It doesn't return a value.
In Dart, a return statement immediately ends the function's execution, and therefore it will break out of a switch statement.
In addition to those, you can use the throw keyword, which throws an error.

7. Ternary conditional operator
The ternary operator is technically that: an operator.
But, it's also kind of an if/else substitute. It's also kind of a ?? alternative, depending on the situation.
The ternary expression is used to conditionally assign a value.
It's called ternary because it has three portions: the condition, the value if the condition is true, and the value if the condition is false.
String alert = isReturningCustomer ? 'Welcome back to our site!' : 'Welcome, please sign up.';


8. Loops: for and while
1. standard for: If you need to know the index, your best bet is the standard for loop
for (var i = 0; i < 5; i++) {
  print(i);
}

2. for-in : If you don't care about the index, the for-in loop is great option.
List<String> pets = ['Nora', 'Wallace', 'Phoebe'];
for (var pet in pets) {
  print(pet);
}

3. while: while loops behave as you'd expect. They evaluate the condition before the loop runs -- meaning it may never run
while(someConditionIsTrue) {
  // do some things
}

4. do-while : do-while loops, on the other hand, evaluate the condition after the loop runs. So they always execute the code in the block at least once
do {
  // do somethings at least once
} while(someConditionIsTrue);


break and continue
These two keywords help you manipulate the flow of the loop.
Use continue in a loop to immediately jump to the next iteration,
and use break to break out of the loop completely:
for (var i = 0; i < 55; i++) {
  if (i == 5) {
    continue; // jump to next iteration
  }
  if (i == 10) {
    break; // stop loop immediately
  }
  print(i);
}
// prints to the console
0
1
2
3
4
6
7
8
9

9. Functions
1. Anatomy of Dart Functions
   Functions look familiar in Dart if you're coming from any C-like language.
   The anatomy of a function is pretty straightforward:
   String makeGreeting(String name) {
     return 'Hello, $name';
   }

   The first line in the function is the signature. It defines the return type of the function, the function name, and lists all arguments the function requires or accepts.

2. Arrow functions
Dart also supports a nice shorthand syntax for any function that has only one expression.

In other words, is the code inside the function block only one line?
Then it's probably a single expression, and you can use this syntax to be concise:
String makeGreeting(String name) => 'Hello, $name!';

main() {
    print(makeGreeting('Wallace'));
}

For lack of better term, we'll call this an arrow function. Arrow functions implicitly return the result of the expression.
=> expression; is essentially the same as { return expression; }.
There's no need to (and you can't) include the return keyword.

10. Function arguments: default, optional, named

Dart functions allow positional parameters, named parameters, and optional positional and named parameters, or a combination of all of them.
Positional parameters: are the basic parameters, and they're required.
void debugger(String message, int lineNum) {
  // ...
}
To call that function, you must pass in a String and an int, in that order:
like : debugger('A bug!', 55);
Named parameters:
Named means that when you call a function, you attach the argument to a label.
Named parameters are written a bit differently. When defining the function, wrap any named parameters in curly braces ({ })
This line defines a function with named parameters:
void debugger({String message, int lineNum}) {}
Calling that function would look like this:
debugger(message: 'A bug!', lineNum: 44);

Named parameters, by default, are optional. But, using the meta package, you can annotate them and make them required:
example:
import 'package:meta/meta.dart'

Widget build({@required Widget child}) {
  //...
}

Positional optional parameters:
Finally, you can pass positional parameters that are optional, using [ ]:
int addSomeNums(int x, int y, [int z]) {
  int sum = x + y;
  if (z != null) {
    sum += z;
  }
  return sum;
}

You call that function like this:
addSomeNums(5, 4); // okay, because the third parameter is optional
addSomeNums(5, 4, 3); // also okay

Default parameter values
You can define default values for parameters with the = operator in the function signature.
Default parameter values tell the function to use the defined default only if nothing is passed in.
// function signature
int addSomeNums(int x, int y, [int z = 5]) => x + y + z;


Note: Default parameter values only work with optional parameters.

11. Lexical scope

The scope is defined by the structure of the code, and you can see what variables are in the current scope by following the curly braces outward to the top level
example:
String topLevel = 'Hello';

void firstFunction() {
  String secondLevel = 'Hi';
  print(topLevel);
  nestedFunction() {
    String thirdLevel = 'Howdy';
    print(topLevel);
    print(secondLevel);
    innerNestedFunction() {
      print(topLevel);
      print(secondLevel);
      print(thirdLevel);
    }
  }
  print(thirdLeve);
}

void main() => firstFunction();

This is a valid function, until the last print statement.
The third-level variable is defined outside the scope of the nested function, because scope is limited to its own block or the blocks above it.

12. Cascade notation
    - Cascade notation is syntactic sugar in Dart that allows you to make a sequence of operations on the same object.
    - You can use the "double dot" to call functions on objects and access properties.
    - This "operator" is simply used to make your code cleaner and concise.
    - It often saves you from having to create temporary variables.

    example:
    // with cascade notation:
    querySelector('#confirm') // Get an object.
      ..text = 'Confirm' // Use its members.
      ..classes.add('important')
      ..onClick.listen((e) => window.alert('Confirmed!'))

    // without cascade notation
    var button = querySelector('#confirm');
    button.text = 'Confirm';
    button.classes.add('important');
    button.onClick.listen((e) => window.alert('Confirmed!'));
