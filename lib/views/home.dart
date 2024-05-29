import 'dart:math';

import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _aController = TextEditingController();
  TextEditingController _bController = TextEditingController();
  TextEditingController _cController = TextEditingController();
  TextEditingController _dController = TextEditingController();

  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Résolution équation  3ème degré nelly',
            style: TextStyle(
              color: Colors.pink,
            )
      ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,


          children: [
            TextFormField(
              controller: _aController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Coefficient a',
                labelStyle: TextStyle(color: Colors.green),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),

            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: _bController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Coefficient b',
                labelStyle: TextStyle(color: Colors.green),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),g
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: _cController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Coefficient c',
                labelStyle: TextStyle(color: Colors.green),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            TextFormField(
              controller:_dController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Coefficient d',
                labelStyle: TextStyle(color: Colors.green),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                backgroundColor: MaterialStateProperty.all(Color(0xFF00FF00)),
              ),
              onPressed: () {
                _aController.clear();
                _bController.clear();
                _cController.clear();
                _dController.clear();
                setState(() {
                  _result = '';
                });
              },
              child: Text('Résoudre'),
            ),
          ],
        ),
      ),
    );
  }
}
