Custom widget:

- Created custom buttons and text. Implemented it in home.dart file
- created custom style for widget and implement it on home.dart 

Other:
MediaQuery:

when developing an app for all platforms, we must take into account different device specifications and ensure that the appeal of our app is consistent and provides users with a seamless experience.

With this in mind, Flutter provides a variety of widgets and classes for creating responsive layouts in applications; including MediaQuery, LayoutBuilder, Expanded, Flexible, and AspectRatio.

In this article, we’ll be looking at how we can build a responsive login page using the two main approaches recommended by the Flutter team, which are the MediaQuery and LayoutBuilder classes.

The mediaQuery class:
The MediaQuery class has a .of method that takes in a context and gives you access to the size (width/height) and orientation (portrait/landscape) of your current app.

The LayoutBuilder class:

The LayoutBuilder class has a builder property that allows us to access a BoxConstraint object.

This object contains constraint information for a specific widget, which can be used to calculate the widget’s maxWidth and maxHeight. These values are crucial in adjusting our display based on the size constraints assigned to our widget.

Wrap and match in flutter

https://stackoverflow.com/questions/42257668/the-equivalent-of-wrap-content-and-match-parent-in-flutter

difference between crossAxisAlignment and mainAxisAlignment

