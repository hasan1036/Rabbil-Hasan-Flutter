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
  var MyItems = [
    {
      "img": "https://cdn.britannica.com/40/75640-050-F894DD85/tiger-Siberian.jpg", "title": "Tiger"
    },
    {
      "img":"https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg","title": "Lion"
    },
    {
      "img":"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Jaguar.jpg/1200px-Jaguar.jpg","title": "Panther"
    },
    {
      "img":"https://www.atlanticcouncil.org/wp-content/uploads/2022/12/snow-leopard-2023-500x350.jpg","title": "leopard"
    },
    {
      "img": "https://cdn.britannica.com/40/75640-050-F894DD85/tiger-Siberian.jpg","title": "Tiger"
    },
    {
      "img":"https://t4.ftcdn.net/jpg/05/35/20/43/360_F_535204390_4sRYsRDp36hQ8kmUtFMhDjmoQcp9RHDZ.jpg","title": "Tiger"
    },
    {
      "img":
          "https://cdn.britannica.com/40/75640-050-F894DD85/tiger-Siberian.jpg",
      "title": "Tiger"
    },
    {
      "img":
          "https://cdn.britannica.com/40/75640-050-F894DD85/tiger-Siberian.jpg",
      "title": "Tiger"
    },
    {"img":"https://cdn.britannica.com/40/75640-050-F894DD85/tiger-Siberian.jpg","title": "Tiger"},


  ];
  mySnackBar(context, msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: ListView.builder(
        itemCount: MyItems.length,itemBuilder: (context, indext) {
          return GestureDetector(
            onTap: () {mySnackBar(context, MyItems[indext]["title"]);},
            child: Container(
              margin: EdgeInsets.all(8.0),
              width: double.infinity,
              height: 250,
              child: Image.network(MyItems[indext]["img"]!,fit:BoxFit.fill ,),
            ),
          );
        },
      ),
    );
  }
}
