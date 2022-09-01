Flutter:

Flutter is an open source framework by Google for building
beautiful,
natively compiled,
multi-platform applications from a single codebase.

It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase.

It's
Fast: Flutter code compiles to ARM or Intel machine code as well as JavaScript, for fast performance on any device.
Productive: Build and iterate quickly with Hot Reload. Update code and see changes almost instantly, without losing state. and
Flexible: Control every pixel to create customized, adaptive designs that look and feel great on any screen.

Flutter is powered by Dart, a language optimized for fast apps on any platform

OR

Flutter is an open-source mobile app SDK created by Google.
Flutter uses Dart language for creating mobile apps, that follow object-oriented concepts.
Flutter has a very good reach among mobile app developers because of its striking features like cross-platform development, hot reload, hot restart, eye-catching UI, etc.

In flutter, from text to padding, everything is a widget. Everything in Flutter is a widget.

Structure of the Flutter project application and its purpose

.idea: This folder is at the very top of the project structure, which holds the configuration for Android Studio. It doesn't matter because we are not going to work with Android Studio so that the content of this folder can be ignored.

.android: This folder holds a complete Android project and used when you build the Flutter application for Android. When the Flutter code is compiled into the native code, it will get injected into this Android project, so that the result is a native Android application. For Example: When you are using the Android emulator, this Android project is used to build the Android app, which further deployed to the Android Virtual Device.

.ios: This folder holds a complete Mac project and used when you build the Flutter application for iOS. It is similar to the android folder that is used when developing an app for Android. When the Flutter code is compiled into the native code, it will get injected into this iOS project, so that the result is a native iOS application. Building a Flutter application for iOS is only possible when you are working on macOS.

.lib: It is an essential folder, which stands for the library. It is a folder where we will do our 99 percent of project work. Inside the lib folder, we will find the Dart files which contain the code of our Flutter application. By default, this folder contains the file main.dart, which is the entry file of the Flutter application.

.test: This folder contains a Dart code, which is written for the Flutter application to perform the automated test when building the app. It won't be too important for us here.

We can also have some default files in the Flutter application. In 99.99 percent of cases, we don't touch these files manually. These files are:

.gitignore: It is a text file containing a list of files, file extensions, and folders that tells Git which files should be ignored in a project. Git is a version-control file for tracking changes in source code during software development Git.

.metadata: It is an auto-generated file by the flutter tools, which is used to track the properties of the Flutter project. This file performs the internal tasks, so you do not need to edit the content manually at any time.

.packages: It is an auto-generated file by the Flutter SDK, which is used to contain a list of dependencies for your Flutter project.

flutter_demoapp.iml: It is always named according to the Flutter project's name that contains additional settings of the project. This file performs the internal tasks, which is managed by the Flutter SDK, so you do not need to edit the content manually at any time.

pubspec.yaml: It is the project's configuration file that will use a lot during working with the Flutter project. It allows you how your application works. This file contains:

Project general settings such as name, description, and version of the project.
Project dependencies.
Project assets (e.g., images).
pubspec.lock: It is an auto-generated file based on the .yaml file. It holds more detail setup about all dependencies.

README.md: It is an auto-generated file that holds information about the project. We can edit this file if we want to share information with the developers.