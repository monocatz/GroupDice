import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedOption1 = "Option 1";
  String _selectedOption2 = "Option A";
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: "Enter text here",
              ),
            ),
            SizedBox(height: 16.0),
            DropdownButton<String>(
              value: _selectedOption1,
              onChanged: (value) {
                setState(() {
                  _selectedOption1 = value!;
                });
              },
              items: [
                DropdownMenuItem(
                  value: "Option 1",
                  child: Text("Option 1"),
                ),
                DropdownMenuItem(
                  value: "Option 2",
                  child: Text("Option 2"),
                ),
                DropdownMenuItem(
                  value: "Option 3",
                  child: Text("Option 3"),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            DropdownButton<String>(
              value: _selectedOption2,
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value!;
                });
              },
              items: [
                DropdownMenuItem(
                  value: "Option A",
                  child: Text("Option A"),
                ),
                DropdownMenuItem(
                  value: "Option B",
                  child: Text("Option B"),
                ),
                DropdownMenuItem(
                  value: "Option C",
                  child: Text("Option C"),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage()),
                );
              },
              child: Text('Weiter'),
            ),
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text('This is the next page!'),
      ),
    );
  }
}
