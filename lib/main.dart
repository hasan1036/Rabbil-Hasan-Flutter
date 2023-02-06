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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Expandable & Flexible")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Expanded(
             flex: 1,
             child: Container(
             color: Colors.green,
           ),),
          Expanded(
            flex: 1,
            child: Container(
             color: Colors.red,
           ),),
          Expanded(
            flex: 1,
            child: Container(
            color: Colors.blue,
          ),),
          Expanded(
            flex: 1,
            child: Container(
            color: Colors.cyan,
          ),),
           Expanded(
             flex: 1,
             child: Container(
             color: Colors.green,
           ),),
          Expanded(
            flex: 3,
            child: Container(
             // color: Colors.red,

           ),),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(child: Container(
                  color: Colors.orange,
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                  color: Colors.black,
                      child:ElevatedButton(onPressed: (){}, child: Text("Hasan"))
                      
                )),
                Expanded(child: Container(
                  color: Colors.orange,
                )),
              ],

          ),),
          Expanded(
            flex: 1,
            child: Container(
            color: Colors.cyan,
          ),),

        ],
      ),
    );
  }
}
