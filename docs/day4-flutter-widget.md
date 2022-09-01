Intro to widgets:

Widget:

Widgets are building blocks which you, the developer, will compose together to make a UI.

Every object in your Flutter application's UI is a widget.

Structure is defined with widgets, styles are defined with widgets, even animations and routing is handled by widgets.
And, widgets are just Dart classes that know how to describe their view.

Here are just a few of the most basic built in widgets in Flutter, separated by their use.
	•	Layout--Row, Column, Scaffold, Stack
	•	Structures--Button, Toast, MenuDrawer
	•	Styles--TextStyle, Color
	•	Animations--FadeInPhoto, transformations
	•	Positioning and alignment--Center, Padding

Writing a widget in code
class AlertButton extends StatelessWidget {
  // a property on this class
  final String text;

  // a constructor for this class
  AlertButton(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.red,
      child: Text(text), // use the text passed in to the constructor.
    );
  }


Widget types: Stateful and Stateless

Flutter widgets must extend a handful of classes from the Flutter library.

The two you'll use most are StatelessWidget and StatefulWidget.

The difference is that one has a concept of State within the Widget, which can be used to tell Flutter when to render and re-render. The other one is "dumb"

Stateless widget:
- It is a widget that you (as the developer) are okay with being destroyed.
- In other words, no information is kept within it that, if lost, will matter.
- All of the widget's state or configuration is passed into it. Its only job is to display information and UI.
- Its life depends on outside forces. It doesn't tell the framework when to remove it from the tree, or when to rebuild it. Rather, the framework tells it when to rebuild.

Writing a StatelessWidget requires extending the correct class and including a build method.

Example:
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

StatefulWidget:
- A Stateful Widget is a bit different. It's actually two classes: a State object and the widget itself.
- The purpose of this class is to persist state when Flutter rebuilds widgets.

In Flutter, the concept of state is defined by two things:

The data used by the widget might change.
The data can't be read synchronously when the widget is built. (All state must be established by the time the build method is called).
setState is used to tell Flutter that it needs to rebuild, usually because something has changed and the screen needs to reflect that.

In actuality, after setState is called, Flutter knows that it needs to call the build method again.

// Stateful Widgets don't have build methods.
// They have createState() methods.
// Create State returns a class that extends Flutters State class.
// Stateful Widgets are rarely more complicated than this.

Importantly:

- The StatefulWidget class must implement the createState method.
- The State object must implement the build method.
- The StatefulWidget is immutable.
- The State object is mutable.

Example:
class Counter extends StatefulWidget {
  Counter({Key key, this.title}) : super(key: key);

   // Stateful Widgets don't have build methods.
   // They have createState() methods.
   // Create State returns a class that extends Flutters State class.
  @override
  _MyHomePageState createState() => new _MyHomePageState();

  // Stateful Widgets are rarely more complicated than this.
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void increaseCount() {
	// setState is a special method that tells Flutter to repaint
	// the view because state has been updated!
	setState(() {
      this.counter++;
 	}
  }

	// gotta have that build method!
  Widget build(context) {
	return new RaisedButton(
      onPressed: increaseCount,
	  child: new Text('Tap to Increase'),
	);
  }
}



