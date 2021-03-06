import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Two Players',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _firstSliderValue = 20;
  double _secondSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two Players"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _firstSliderValue,
              min: 0,
              max: 100,
              label: _firstSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _firstSliderValue = value;
                });
              },
            ),
            Slider(
              value: _secondSliderValue,
              min: 0,
              max: 100,
              label: _secondSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _secondSliderValue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
