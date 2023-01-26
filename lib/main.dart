import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 60));


    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding:EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText:"FirstName"),),
          ),
          Padding(padding:EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText:"Last Name"),),
          ),
          Padding(padding:EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText:"Email Name"),),
          ),
          Padding(padding:EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("Submit"), style: buttonStyle,),
          ),
          TextButton(onPressed: (){}, child: Text("data")),

        ],

      ),
    );
  }
}
