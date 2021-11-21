import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Update Indeks Kewaspadaan",
    home: MyForm(),
  ));
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String? _indeks = " ";
  String? _sumber = " ";
  String? _valid = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Indeks Kewaspadaan"),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "Contoh: Indeks Kewaspadaan",
                      labelText: "Nama Indeks",
                      icon: Icon(Icons.map_outlined),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        setState(() => _indeks = 'NAMA INDEKS TIDAK VALID');
                        return 'Nama indeks tidak boleh kosong';
                      }
                      setState(() => _indeks = value);
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "Contoh: https://datawrapper.dwcdn.net/DfOth/5/",
                      labelText: "Sumber Data",
                      icon: Icon(Icons.source),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        setState(() => _sumber = 'SUMBER DATA TIDAK VALID');
                        return 'Sumber data tidak boleh kosong';
                      }
                      setState(() => _sumber = value);
                      return null;
                    },
                  ),
                ),
                Text(
                "\nNama indeks yang ditambahkan: \n$_indeks\n",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                ),
                Text(
                "Sumber data yang ditambahkan: \n$_sumber\n",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                ),
                Text(
                "$_valid\n",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                ),
                RaisedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() => _valid = 'DATA BERHASIL DITAMBAHKAN');
                    }
                    else{
                    setState(() => _valid = 'DATA BELUM BERHASIL DITAMBAHKAN');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// ref: sample code lab 7