import 'package:flutter/material.dart';
import 'package:rabbirl_hasan_1/style.dart';
import 'package:responsive_grid/responsive_grid.dart';

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

    // var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    // var orientasion = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Expandable & Flexible")),
      ),
      
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ResponsiveGridRow(children: [


          ResponsiveGridCol(
            lg: 12,
              child:Container(
                height: 100,
                color: Color(0xffffc467),
              ),
          ),


          ResponsiveGridCol(
           xl: 4, lg: 6, md: 8, sm: 9, xs: 12,
              child:Container(
                height: 100,
                color: Color(0xff543400),
              ),
          ),

          ResponsiveGridCol(
           xl: 4, lg: 6, md: 8, sm: 9, xs: 12,
              child:Container(
                height: 100,
                color: Color(0xff00ca07),
              ),
          ),

          ResponsiveGridCol(
           xl: 4, lg: 6, md: 8, sm: 9, xs: 12,
              child:Container(
                height: 100,
                color: Color(0xff0117e2),
              ),
          ),

          ResponsiveGridCol(
           xl: 4, lg: 6, md: 8, sm: 9, xs: 12,
              child:Container(
                height: 100,
                color: Color(0xfff40000),
              ),
          ),

          ResponsiveGridCol(
           xl: 4, lg: 6, md: 8, sm: 9, xs: 12,
              child:Container(
                height: 100,
                color: Color(0xff00ffd4),
              ),
          ),

          ResponsiveGridCol(
           xl: 4, lg: 6, md: 8, sm: 9, xs: 12,
              child:Container(
                height: 100,
                color: Color(0xffbe00fe),
              ),
          ),

          ResponsiveGridCol(
           xl: 4, lg: 6, md: 8, sm: 9, xs: 12,
              child:Container(
                height: 100,
                color: Color(0xff45ff16),
              ),
          ),

        ],
    ),
      ),
    );
  }
}
