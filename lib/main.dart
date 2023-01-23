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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("message")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inventory App",
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 50,
        backgroundColor: Colors.blue,
        //leading: Icon(Icons.android),
        actions: [
          IconButton(
            onPressed: () {
              final snackbar = SnackBar(
                content: Text("I am comment"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            icon: Icon(Icons.comment),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("Serch", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.email,
              color: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () {
          final snackbar2 =
              SnackBar(content: Text("I am flutting Action Button"));
          ScaffoldMessenger.of(context).showSnackBar(snackbar2);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), label: "contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            final homeSnack = SnackBar(content: Text("I am Home Button"));
            ScaffoldMessenger.of(context).showSnackBar(homeSnack);
          }
          if (index == 1) {
            final homeSnack = SnackBar(content: Text("I am Contacts Button"));
            ScaffoldMessenger.of(context).showSnackBar(homeSnack);
          }
          if (index == 2) {
            final profileSnack =
                SnackBar(content: Text("I am profile SnackBar"));
            ScaffoldMessenger.of(context).showSnackBar(profileSnack);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0.0),
              child: UserAccountsDrawerHeader(
                //decoration: BoxDecoration(color:Colors.black ),
                accountName: Text("Hasan"),
                accountEmail: Text("Hasan@gmail.com"),
                currentAccountPicture: Image.network(
                    "https://w7.pngwing.com/pngs/67/315/png-transparent-flutter-hd-logo-thumbnail.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("Home", context);
              },
            ),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contact"),
                onTap: () {
                  MySnackBar("Contact", context);
                }),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                MySnackBar("Profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {
                MySnackBar("Email", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              onTap: () {
                MySnackBar("Phone", context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0.0),
              child: UserAccountsDrawerHeader(
                //decoration: BoxDecoration(color:Colors.black ),
                accountName: Text("Hasan"),
                accountEmail: Text("Hasan@gmail.com"),
                currentAccountPicture: Image.network(
                    "https://w7.pngwing.com/pngs/67/315/png-transparent-flutter-hd-logo-thumbnail.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("Home", context);
              },
            ),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contact"),
                onTap: () {
                  MySnackBar("Contact", context);
                }),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                MySnackBar("Profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {
                MySnackBar("Email", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              onTap: () {
                MySnackBar("Phone", context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(40, 60, 10, 40),
        padding: EdgeInsets.all(8.0),
        height: 250,
        width: 250,
        alignment: Alignment.topCenter,
        child: Text(
          "data",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black, width:6)
        ),
      ),
    );
  }
}
