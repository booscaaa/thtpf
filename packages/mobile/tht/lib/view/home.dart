import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:tht/controller/person/person.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final person = GetIt.I.get<PersonController>();

  @override
  void initState() {
    super.initState();
    person.getPeople();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Observer(builder: (_) {
              return Expanded(
                  child: ListView.builder(
                itemBuilder: (BuildContext context, int index) =>
                    Text(person.people[index].fullName),
                itemCount: person.people.length,
              ));
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: person.getPeople,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
