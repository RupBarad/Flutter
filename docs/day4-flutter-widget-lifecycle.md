Stateful widget lifecycle

The lifecycle has the following simplified steps:

constructor:
When Flutter builds a stateful widget, it first executes the constructor function of the widget and then calls the createState() method.
If we look at the stateful widget, the constructor function is executed first.
On the other hand, if we look at the State object of the stateful widget, its lifecycle starts when the createState() method is called

1. createState()
   - Flutter is instructed to build a StatefulWidget, it immediately calls createState().
   - This method must exist.

2. mounted == true
   - All widgets have a bool this.mounted property.
   - It is turns true when the buildContext is assigned.
   - It is an error to call setState when a widget is unmounted.
   - This property gives us information on whether this State object is currently in a widget tree.

   Note: This step is not marked as a real step in the lifecycle, but it is important to know what is going on in the background.
   tip: This property is useful when a method on your state calls setState() but it isn't clear when or how often that method will be called. Perhaps its being called in response to a stream updating. You can use if (mounted) {... to make sure the State exists before calling setState().

3. initState()
   - When the object is inserted into the tree (mounted property is set to true), this method is automatically executed after the class constructor.
   - initState() is called only once, when the state object is created for the first time.
   - Note: You cannot use BuildContext from this method.
   - Tip: Use this method to manage HTTP requests and subscribe to streams or any other object that could change the data on this widget.

4. didChangeDependencies()
   - The framework will call this method immediately after theinitState().
   - It will also be called when an object that a widget depends on changes.
   - The build method is always called after this method, so this method is rarely needed.
   - The docs also suggest that it could be useful if you need to do network calls (or any other expensive action) when an InheritedWidget updates.

5. build()
   - This method is required and it will be called many times during the lifecycle, but the first time is after the didChangeDependencies() method.
   - So whenever the widget that belongs to the state is updated, the framework will always execute this method (i.e. every time didUpdateWidget() or setState() method is called).

6. didUpdateWidget()
   - Gets called if the parent widget changes its configuration and has to rebuild the widget.
   - The framework gives you the old widget as an argument that you can use to compare it with the new widget.
   - Flutter will call the build() method after it.
   - Tip: Use this method if you need to compare the new widget to the old one.

7. setState()
   - This method is often called from the Flutter framework itself and from the developer.
   - The setState() method notifies the framework that the internal state of the current object is “dirty,” which means that it has been changed in a way that might impact the UI.
   - After this notification, the framework will call the build() method to update and rebuild a widget.
   - Tip: Whenever you change the internal state of a State object, make that change in the setState() method.
     setState(() {
       // implement setState
     });
   - Note: I will not mark setState as a step in the lifecycle method because it is the only method invoked by developers.

8. deactivate()
   - This method is called when the widget is removed from the widget tree, but it can be reinserted before the current frame changes are finished when the state is moved from one point in a tree to another.
   - This is rarely used.


9. dispose()
   - This is called when the State object is removed permanently from the widget tree.
   - Tip: Use this method for cleaning up data listeners or life connections.

10. mounted == false
   - After the dispose() method, the State object is not currently in a tree, so the mounted property is now false. The state object can never remount.

Extra: didChangeAppLifecycleState

Called when the system puts the app in the background or returns the app to the foreground.

Example:

import 'package:flutter/material.dart';

    class ScreenLifecyle extends StatefulWidget {
    ScreenLifecyleState state;

        //createState(): When the Framework is instructed to build a StatefulWidget, it immediately calls createState()
        @override
        State<StatefulWidget> createState() {
            // TODO: implement createState
            return ScreenLifecyleState();
        }
    }

    class ScreenLifecyleState extends State<ScreenLifecyle> {
    /*
    mounted is true: When createState creates your state class, a buildContext is assigned to that state.
    BuildContext is, overly simplified, the place in the widget tree in which this widget is placed.
    Here's a longer explanation. All widgets have a bool this.mounted property.
    It is turned true when the buildContext is assigned. It is an error to call setState when a widget is unmounted.
    mounted is false: The state object can never remount, and an error is thrown is setState is called.
    */

    /*
    This is the first method called when the widget is created (after the class constructor, of course.)
    initState is called once and only once. It must called super.initState().
    */
    @override
    void initState() {
        // TODO: implement initState
        super.initState();
        print("initState");
    }

    /*
    This method is called immediately after initState on the first time the widget is built.
    */
    @override
    void didChangeDependencies() {
        // TODO: implement didChangeDependencies
        super.didChangeDependencies();
        print("didChangeDependencies");
    }

    /*
    build(): This method is called often. It is required, and it must return a Widget.
    */
    @override
    Widget build(BuildContext context) {
        print("build");

        // TODO: implement build
        return Container();
    }

    /*
    If the parent widget changes and has to rebuild this widget (because it needs to give it different data),
    but it's being rebuilt with the same runtimeType, then this method is called.
    This is because Flutter is re-using the state, which is long lived.
    In this case, you may want to initialize some data again, as you would in initState.
    */
    @override
    void didUpdateWidget(ScreenLifecyle oldWidget) {
        print("didUpdateWidget");

        // TODO: implement didUpdateWidget
        super.didUpdateWidget(oldWidget);
    }

    @override
    void setState(fn) {
        print("setState");

        // TODO: implement setState
        super.setState(fn);
    }

    /*
    Deactivate is called when State is removed from the tree,
    but it might be reinserted before the current frame change is finished.
    This method exists basically because State objects can be moved from one point in a tree to another.
    */
    @override
    void deactivate() {
        // TODO: implement deactivate
        print("deactivate");
        super.deactivate();
    }

    /*
    Dispose is called when the State object is removed, which is permanent.
    This method is where you should unsubscribe and cancel all animations, streams, etc.
    */
    @override
    void dispose() {
        // TODO: implement dispose
        super.dispose();
     }

       @override
        void didChangeAppLifecycleState(AppLifecycleState state) {
            super.didChangeAppLifecycleState(state);
            switch (state) {
            case AppLifecycleState.inactive:
                print('appLifeCycleState inactive');
                break;
            case AppLifecycleState.resumed:
                print('appLifeCycleState resumed');
                break;
            case AppLifecycleState.paused:
                print('appLifeCycleState paused');
                break;
            case AppLifecycleState.suspending:
                print('appLifeCycleState suspending');
                break;
            }
        }

  }

Ref Link:
Doc: https://flutterbyexample.com/lesson/stateful-widget-lifecycle
Good Explanation: https://betterprogramming.pub/stateful-widget-lifecycle-a01c44dc89b0
Lifecycle: https://miro.medium.com/max/1400/1*9kFme2gBIl9HtYFidAZw0w.jpeg
Example: https://stackoverflow.com/questions/41479255/life-cycle-in-flutter

