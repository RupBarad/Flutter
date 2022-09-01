1. What is flutter?
   - Flutter is an open-source UI software development kit created by Google.
   - It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase.
   - First described in 2015, Flutter was released in May 2017.
   - Flutter uses Dart language for creating mobile apps, that follow object-oriented concepts.
   - Flutter has a very good reach among mobile app developers because of its striking features like cross-platform development, hot reload, hot restart, eye-catching UI, etc.
It's
Fast: Flutter code compiles to ARM or Intel machine code as well as JavaScript, for fast performance on any device.
Productive: Build and iterate quickly with Hot Reload. Update code and see changes almost instantly, without losing state. and
Flexible: Control every pixel to create customized, adaptive designs that look and feel great on any screen.

2. What is Dart?
   - Dart is a general-purpose, object-oriented programming language with C-style syntax.
   - It is open-source and developed by Google in 2011.
   - The purpose of Dart programming is to create a frontend user interfaces for the web and mobile apps.
   - It is an important language for creating Flutter apps. The Dart language can be compiled both AOT (Ahead-of-Time) and JIT (Just-in-Time.

3. Is Flutter free?
   - Yes. Flutter is free and open-source.

4. What are the flutter widget?
   - A Flutter app is always considered as a tree of widgets.
   - Every object in your Flutter application's UI is a widget.
   - widgets are just Dart classes that know how to describe their view.
   - Here are just a few of the most basic built in widgets in Flutter, separated by their use.
   	•	Layout--Row, Column, Scaffold, Stack
   	•	Structures--Button, Toast, MenuDrawer
   	•	Styles--TextStyle, Color
   	•	Animations--FadeInPhoto, transformations
   	•	Positioning and alignment--Center, Padding

5. Explain stateless and stateful widget
    - Stateless:
      - The Stateless widget does not have any state information. It remains static
      - The widgets which remain constant throughout the lifetime of the app are called stateless widgets.
      - We use them when we want structures to stay the same all over the app, for example, the AppBar, color scheme,
      - The life cycle of stateless widgets is simple; there’s only one stage: the build method.
      -  they cannot be changed.
      - Here Hot Reload can reflect the changes made in the app structure and can be used for verification.

      example:
      class TitleText extends StatelessWidget {
        final String text;

        TitleText(this.text);

        @override
        Widget build(BuildContext context) {
          return Center(
            child: Text(text)
          );
        }
      }

    - Stateful:
      - The widgets used when we want objects to be updated on the screen are called stateful widgets.
      - For example: when a user presses a button to trigger an action ( basically- User Interaction).
      - These widgets are mutable, i.e. they can be manipulated as per the requirements.
      - Here, the Hot Reload cannot reflect the changes made; therefore, to serve the purpose, hot restart is used.
      - Explain lifecycle of stateful widget
      - Example

6. What is pubspec.yaml file?
  - It is the project's configuration file that will use a lot during working with the Flutter project.
  - This file contains:
       - Project general settings such as name, description, and version of the project.
       - Project dependencies.
       - Project assets (e.g., images, audio, etc.).

7. Widget tree
  - as the user interface contains several widgets, those several widgets are combined to form a widget tree.

8. BuildContext
  - Every Flutter widget has an @override build() method with the argument of BuildContext.
  - It is the location of the Widget in the widget tree.