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
![flutter doctor](flutter doctor)

As shown in this picture you can also run flutter commands in the cmd console on windows if u add flutter to your system’s path, to do so type “path” in the start menu and press enter, select “Environment Variables” from the pop up. From there select path from the list and press “Edit”, just add a new path variable by adding the file location of the flutter install. An example of this is shown below.
![flutter doctor](addingpath)

Before you can use flutter with android studio you need to setup some configurations first. You need a virtual device, but android studio should start you with one, you can use whatever you like. In Android studio we emulate an android phone when we run, this is taxing on a computer, especially an older one, If you enable hardware for the graphics settings of your virtual device you may get faster rendering, although it probably won’t fix the problem completely.

After this go to the main android studio pop up and tap “configure” and click “plugins”. In the marketplace type flutter and click the first plugin and install it. (as well as the dart plugin it is dependent on). The screens should look like they do below during this step.
![flutter doctor](AS flutterinstall)

After this you can now create and run flutter projects in Android studio, congratulations!

## Coding Demo

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
