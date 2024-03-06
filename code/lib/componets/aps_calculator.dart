import 'package:flutter/material.dart';

class ApsCalculator extends StatefulWidget {
  @override
  _ApsCalculatorState createState() => _ApsCalculatorState();
}

class _ApsCalculatorState extends State<ApsCalculator> {
  final _formKey = GlobalKey<FormState>();
  final _textEditingController1 = TextEditingController();
  final _textEditingController2 = TextEditingController();
  final _textEditingController3 = TextEditingController();
  final _textEditingController4 = TextEditingController();
  final _textEditingController5 = TextEditingController();
  final _textEditingController6 = TextEditingController();
  final _textEditingController7 = TextEditingController();

  double _aps = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('APS Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _textEditingController1,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Subject 1 Points',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _textEditingController2,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Subject 2 Points',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _textEditingController3,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Subject 3 Points',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _textEditingController4,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Subject 4 Points',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _textEditingController5,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Subject 5 Points',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _textEditingController6,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Subject 6 Points',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _textEditingController7,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Subject 7 Points',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _aps = (double.parse(_textEditingController1.text) +
                                double.parse(_textEditingController2.text) +
                                double.parse(_textEditingController3.text) +
                                double.parse(_textEditingController4.text) +
                                double.parse(_textEditingController5.text) +
                                double.parse(_textEditingController6.text) +
                                double.parse(_textEditingController7.text)) /
                            7;
                      });
                    }
                  },
                  child: Text('Calculate APS'),
                ),
                SizedBox(height: 16.0),
                Text(
                  'APS: ${_aps.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
