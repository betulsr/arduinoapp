import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _outputText = 'Output';

  bool _isStarted = false;

  Color _buttonColor() {
    return _isStarted ? Colors.red : Colors.green;
  }

  void _toggleButton() {
    setState(() {
      if (_isStarted) {
        _isStarted = false;
      } else {
        _isStarted = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Text(
                _outputText,
                style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 90),
              ElevatedButton(
                child: Text(_isStarted ? 'Stop' : 'Start',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: _toggleButton,
                style: ElevatedButton.styleFrom(
                  primary: _buttonColor(),
                  minimumSize: Size(120, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
