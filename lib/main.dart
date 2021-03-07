import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Setlist',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SetlistCollectionPage(title: 'Setlist'),
    );
  }
}

class SetlistCollectionPage extends StatefulWidget {
  SetlistCollectionPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SetlistCollectionPageState createState() => _SetlistCollectionPageState();
}

class _SetlistCollectionPageState extends State<SetlistCollectionPage> {
  final _setlistCollection = [
    'Repertório Geral 2021',
    'Show Ahoy Carnarock',
    'Ensaio Bacca',
    'Renovação de Repertório - Brainstorm'
  ];

  final _biggerFont = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Setlists"),
          leading: IconButton(
            icon: Icon(Icons.list_alt),
            onPressed: _pushSaved,
          ),
        ),
        body: _buildSuggestions());
  }

  void _pushSaved() {}

  Widget _buildSuggestions() {
    List<Widget> items = List<Widget>();
    for (int i = 0; i < _setlistCollection.length; i++) {
      items.add(_buildRow(_setlistCollection[i]));
      items.add(Divider());
    }

    return ListView(children: items, padding: EdgeInsets.all(16.0));
  }

  Widget _buildRow(String text) {
    return ListTile(
      title: Text(
        text,
        style: _biggerFont,
      ),
      //trailing: Icon(Icons.favorite, color: Colors.redAccent),
      onTap: () {
        setState(() {});
      },
    );
  }
}
