import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<Home> {
  final indexes = ['Indeks Kewaspadaan', 'Kasus Harian', 'Kasus Aktif', 'Case Fatality Rate', 'Rasio Lacak Isolasi'];
  String? _currentIndexes = 'Indeks Kewaspadaan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Indeks Kewaspadaan")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.blue.shade200,
          ),
          child: ListView(
            children: <Widget>[
              DropdownButtonFormField<String>(
              value: _currentIndexes,
              items: indexes.map((index) {
                return DropdownMenuItem(
                  value: index,
                  child: Text(index),
                );
              }).toList(),
              onChanged: (val) => setState(() => _currentIndexes = val),
              ),
              Text(
                "\nIndeks yang ditampilkan: \n$_currentIndexes",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// ref: 
// https://medium.com/@alamsyah15/flutter-dropdown-menu-button-ee6ad020f922, 
// https://stackoverflow.com/questions/50392607/the-element-type-listwidget-cant-be-assigned-to-the-list-type-widget
// https://stackoverflow.com/questions/46530527/how-should-i-customize-dropdownbuttons-and-dropdownmenuitems-in-flutter