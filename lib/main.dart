import 'dart:core';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:myapp/utils.dart';
import 'events_example.dart';
import './utils.dart';
import 'JournalEntry.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome, press here to start',
            ),
            TextButton(
              child: Text('LogIn', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new ListDisplay()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DynamicList extends State<ListDisplay> {
  Event event = new Event.full(
      '',
      '',
      0,
      0,
      false,
      false,
      false);
  List<Event> events = [];
  final TextEditingController eCtrlTitle = new TextEditingController();
  final TextEditingController eCtrlPlant = new TextEditingController();
  final TextEditingController eCtrlAge = new TextEditingController();
  final TextEditingController eCtrlHeight = new TextEditingController();
  final TextEditingController eCtrlIsFlowering = new TextEditingController();
  final TextEditingController eCtrlWasTrained = new TextEditingController();
  final TextEditingController eCtrlWasWatered = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Journal Entries"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.ballot_rounded),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new HomeCalendarPage()),
                );
              },
            ),
          ],
        ),
        body: new Column(
          children: <Widget>[
            new Text(
                'Enter event title'
            ),
            new TextField(
              controller: eCtrlTitle, onSubmitted: (text) {
              event.title = text;
              eCtrlTitle.clear();
              setState(() {});
            },
            ),
            new Text(
                'Enter plant name'
            ),
            new TextField(
              controller: eCtrlPlant, onSubmitted: (text) {
              event.plant = text;
              eCtrlPlant.clear();
              setState(() {});
            },
            ),
            new Text(
                'Enter age'
            ),
            new TextField(
              controller: eCtrlAge, onSubmitted: (text) {
              event.age = int.parse(text);
              eCtrlAge.clear();
              setState(() {});
            },
            ),
            new Text(
                'Enter height'
            ),
            new TextField(
              controller: eCtrlHeight, onSubmitted: (text) {
              event.height = int.parse(text);
              eCtrlHeight.clear();
              setState(() {});
            },
            ),
            new Text(
                'Is the plant flowering? (true/false)'
            ),
            new TextField(
              controller: eCtrlIsFlowering, onSubmitted: (text) {
              event.isFlowering = toBoolean(text);
              eCtrlIsFlowering.clear();
              setState(() {});
            },
            ),
            new Text(
                'Is the plant get trained? (true/false)'
            ),
            new TextField(
              controller: eCtrlWasTrained, onSubmitted: (text) {
              event.wasTrained = toBoolean(text);
              eCtrlWasTrained.clear();
              setState(() {});
            },
            ),
            new Text(
                'Did the plant get watered? (true/false)'
            ),
            new TextField(
              controller: eCtrlWasWatered, onSubmitted: (text) {
              event.wasWatered = toBoolean(text);
              eCtrlWasWatered.clear();
              setState(() {});
            },
            ),
            TextButton.icon(
              label: Text('Create Event', style: TextStyle(
                  fontSize: 25.0, backgroundColor: Colors.green),),
              icon: Icon(Icons.add_circle_outlined),
              onPressed: () {
                events.add(event);
                print(events);
              },
            ),
          ],
        )
    );
  }
}

// retrieved from: https://pub.dev/documentation/string_validator/latest/string_validator/toBoolean.html
bool toBoolean(String str, [bool strict = false]) {
  if (strict == true) {
    return str == '1' || str == 'true';
  }
  return str != '0' && str != 'false' && str != '';
}


class ListDisplay extends StatefulWidget {
  @override
  State createState() => new DynamicList();
}

class HomeCalendarPage extends StatefulWidget {
  @override
  _HomeCalendarPageState createState() => _HomeCalendarPageState();
}

class _HomeCalendarPageState extends State<HomeCalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TableCalendar Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Events'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => TableEventsExample()),
              ),
            ),
            const SizedBox(height: 12.0),
          ],
        ),
      ),
    );
  }
}