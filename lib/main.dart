

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int countNumber = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),



      body: Center(child:Text(countNumber.toString()),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){ setState(() {countNumber = countNumber+1;});},
        child: Icon(Icons.add),
      ),
    );






  }
}




//
// class MyHomePage extends StatefulWidget{
//
//   @override
//   State<StatefulWidget> createState() {
//    return MyHomePageUI();
//   }
// }
//
// class MyHomePageUI extends State<>

