import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDo App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo App"),
      ),
      body: TodoPage(),
    );
  }
}

class TodoPage extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<TodoPage> {
  TextEditingController t1 = TextEditingController();
  List list = [];

  addList() {
    setState(() {
      list.add(t1.text);
      t1.clear();
    });
  }

  removeList() {
    setState(() {
      list.remove(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, siraNumarasi) => ListTile(
                title: Text(list[siraNumarasi]),
              ),
            ),
          ),
          TextField(
            controller: t1,
          ),
          ElevatedButton(
            onPressed: addList,
            child: Text("Ekle"),
          ),
          ElevatedButton(
            onPressed: removeList,
            child: Text("Çıkar"),
          ),
        ],
      ),
    );
  }
}
