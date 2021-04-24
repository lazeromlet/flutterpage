# Welcome to Flutter and Dart

You can use the [editor on GitHub](https://github.com/lazeromlet/flutterpage/edit/gh-pages/index.md)

## Overview

Flutter is a toolkit that allows you to create applications for Android and IOS from a single codebase in a different language entirely. Flutter runs with the dart language as its Coding language. This language was specifically designed for Flutter it has relatively simple syntax and is easy to pick up. Flutter was designed specifically for creating User Interfaces (UI’s) and that is what it is best at. In Flutter everything is essentially a widget and UI's are created with widget trees, widgets can be inside of other widgets and have text or anything else be inside of them as well. It allows for static and dynamic typing when coding variables. One of the features heavily hyped up about the Platform is the ability to see changes made to an app while it is running with the "hot-reload" feature, potentially saving coders a decent amount of time when prototyping. It also allows for ahead of time (AOT) compiling to native machine code which makes for quick startup times for apps. It also has the ability to compiler into JavaScript so it can be used to create Web Apps out of the same source code that the mobile apps were developed with.

## Getting Started

To start coding our Flutter Application, We first need a few things downloaded on our device they are as follows:

1.	[Android Studio](https://developer.android.com/studio)
2.	[Git](https://git-scm.com/downloads)
3.	[Flutter](https://flutter.dev/docs/get-started/install)

This can be done without git, but it is recommended just to pull Flutter from the GitHub Repo as described on their website. For each application click on the linked tags and follow the instructions on each website. Pay special attention to Flutter’s install instructions, make sure it is installed somewhere that does not require admin privileges. After all is installed, you can run ‘flutter doctor’ in the flutter console to make sure all the appropriate files are downloaded, and that android studio can be found. If android studio is installed and this shows that it isn’t try moving android studio into a file location that doesn’t require admin privileges. If all works smoothly it should look something like this:

![flutter_doctor](./Images/flutter_doctor.png)

As shown in this picture you can also run flutter commands in the cmd console on windows if u add flutter to your system’s path, to do so type “path” in the start menu and press enter, select “Environment Variables” from the pop up. From there select path from the list and press “Edit”, just add a new path variable by adding the file location of the flutter install. An example of this is shown below.

![addingpath](./Images/addingpath.png)

Before you can use flutter with android studio you need to setup some configurations first. You need a virtual device, but android studio should start you with one, you can use whatever you like. In Android studio we emulate an android phone when we run, this is taxing on a computer, especially an older one, If you enable hardware for the graphics settings of your virtual device you may get faster rendering, although it probably won’t fix the problem completely.

After this go to the main android studio pop up and tap “configure” and click “plugins”. In the marketplace type flutter and click the first plugin and install it. (as well as the dart plugin it is dependent on). The screens should look like they do below during this step.

![AS_flutterinstall](./Images/AS_flutterinstall.png)

After this you can now create and run flutter projects in Android studio, congratulations!

## Coding Demo

### Preamble/Sources

To begin Coding you need to gather the basics of the Dart Language, since this is expected of you, I will simply list sites/videos I found helpful below in learning the language itself. Shout out to Net Ninja on YouTube and Daksh on medium.com for all their helpful guides and the dart API documentation creators, they make it a lot easier to follow and learn the language. The use of the “table_calendar” dependency and user aleksanderwozniak for the prebuilt calendar implementation. As well as always thanks to Stack Overflow for helping answer questions along the way.
1.	[Net Ninja Tutorial Series](https://www.youtube.com/watch?v=1ukSR1GRtMU&list=RDCMUCW5YeuERMmlnqo4oq8vwUpg&start_radio=1&t=1)
2.	[Daksh main page](https://medium.com/@DakshHub)
3.	[dart.dev](https://dart.dev/guides)
4.	[table_calendar pub.dev](https://pub.dev/packages/table_calendar)
5.	[user aleksanderwozniak’s implementation](https://github.com/aleksanderwozniak/table_calendar)
6.	[Stack Overflow](https://stackoverflow.com/)

### Code Dependancies

To run our application, we will need to grab a few resources first. The first thing we need to do is make sure the table_calendar dependancy runs on our build.

1. [user aleksanderwozniak’s implementation](https://github.com/aleksanderwozniak/table_calendar)

This Codebase is listed to give the author credit, the rest of the code is either autogenerated when creating a new flutter app in android studio, or coded in after the fact by us. To begin go into Android Studio and select "". After it builds, go into the 'pubspec.yaml' file and type 'table_calendar: ^3.0.0' and 'intl ^0.17.0' to link the newest versions of these dependancies. Afterwards a popup will apear to run pub get to get the new dependancies. Example below.

![dependancy](./Images/dependancy.png)

After this we also need to add the following dart files into our lib folder 'util.dart', 'JournalEntry', and 'events_example'. These are the different files we will place our code into. The imports for each file are listed below

#### main.dart
```markdown
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:myapp/utils.dart';
import 'events_example.dart';
import './utils.dart';
```
#### utils.dart
```markdown
import 'dart:collection';
import 'package:table_calendar/table_calendar.dart';
import 'JournalEntry.dart';
```
#### events_example
```markdown
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import './utils.dart';
```





## Discussion & Conclusions














```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```
