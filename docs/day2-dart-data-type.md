Dart programming - Data types

1. Numbers
    - int ( An int is a whole number (integer + - ).),
    - double(double is a floating-point number, or a number with a decimal point),
    - num(num is a super class of both int and double. Which means you can use num when dealing with numbers that could be an integer or floating-point number. They're best used when you don't know which of the types will be used) ,

2. String(String is the basic class with which you write text. Strings can be concatenated with + operator, or by simply placing multiple strings next to eachother. You can interpolate values into strings with the $ operator for single values, and ${} for expressions.You can interpolate values into strings with the $ operator for single values, and ${} for expressions.
3. bool (represents a boolean value. It can be true or false)

4. dynamics: If you did want to create a variable that's more dynamic, you'd use the dynamic keyword. We'll see examples of that in a later lesson.
example
dynamic message = 'Hello World';
example:
dynamic message = 'Hello, World';
message = 8; 

5. list- same as java
 
spread operator … you can add array1 into another by this
 
collection if - Add condition directly while adding values in array
 
collection for - add for condition and add values in array 
 https://flutterbyexample.com/lesson/lists
 
6. set: Sets are similar to lists, with two distinctions. While a List is ordered, a set is unordered. Also, the objects in a Set are unique. And that is a guarantee.
For example, if you have a Set of int objects, and you try to add 1 to the set twice, the second attempt simply won't work.Dart will just realize that the 1 already exists in the set, and it'll move on.

7. map: A map, also known commonly as a dictionary or hash, is an unordered collection of key-value pairs. Maps pair a key with a value for easy, fast retrieval.


Ref link: https://flutterbyexample.com

