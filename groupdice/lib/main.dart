import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Let's Dice!",
      home: MyHomePage(),
      theme:ThemeData(
        primarySwatch: Colors.deepPurple,
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  TextEditingController _textEditingController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Dice'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Projekt erstellen',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Thema Projekt',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            TextField(
              maxLength: 25,
              controller: _textEditingController1,
              decoration: InputDecoration(
                hintText: "Wie soll das Projekt heißen?",
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Anzahl der Personen (gesamt)',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            TextField(
              maxLength: 3,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: _textEditingController2,
              decoration: InputDecoration(
                hintText: "Wie viele Teilnehmer:innen gibt es?",
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Maximale Gruppengröße',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            TextField(
              maxLength: 3,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: _textEditingController3,
              decoration: InputDecoration(
                hintText: "Wie groß sollen die einzelnen Gruppen höchstens sein?",
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text('Weiter'),
              ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              },
              child: Text('Zurück'),
              ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attribute festlegen'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Coming soon ...',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startseite'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Coming soon ...',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
