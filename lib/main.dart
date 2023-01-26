import 'package:flutter/material.dart';

import 'Fragment/AlarmFragment.dart';
import 'Fragment/BalanceFragment.dart';
import 'Fragment/ContactFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/PersonFragment.dart';
import 'Fragment/SearchFragment.dart';
import 'Fragment/settingsFragment.dart';


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
    return DefaultTabController(length: 8, child: Scaffold(
      appBar: AppBar(
        title: Text("My Apps"),
        bottom: TabBar(
            isScrollable: true,
            tabs: [
          Tab(icon: Icon(Icons.home),text:"home",),
          Tab(icon: Icon(Icons.search),text:"search"),
          Tab(icon: Icon(Icons.settings),text:"settings"),
          Tab(icon: Icon(Icons.email),text:"email"),
          Tab(icon: Icon(Icons.contact_mail),text:"contact"),
          Tab(icon: Icon(Icons.person),text:"person"),
          Tab(icon: Icon(Icons.access_alarm),text:"alarm"),
          Tab(icon: Icon(Icons.account_balance),text:"balance"),
        ]),
      ),
      body: TabBarView(
          children:[
            HomeFragment(),
            SearchFragment(),
            settingsFragment(),
            EmailFragment(),
            ContactFragment(),
            PersonFragment(),
            AlarmFragment(),
            BalanceFragment(),

          ]

      ),
    ));
  }
}
