import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MY APP",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.red
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String myText = "Hello World";

  void _changeText(){
    setState(() {
      if(myText.startsWith("H")){
        myText = "Welcome to Flutter";
      }else{
        myText = "Hello World";
      }
    });
  }

  Widget _bodyWidget(){

    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(myText, style: TextStyle(
              color: Colors.red
            ),),
//            new RaisedButton(
//              child: Text("Click", style: TextStyle(
//                color: Colors.red
//              ),),
//              onPressed: _changeText,
//              color: Colors.blue,
//            )

          ],
        ),
      ),

    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_alarm),
        onPressed: _changeText,
      ),
    );
  }
}
