

import 'package:flutter/material.dart';
import 'package:rabbirl_hasan_1/style.dart';

void main(){
  runApp( MyApp());
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

  Map<String, double> FormValue = {"Num1":0, "Num2":0, "Num3":0 };
  double SUM = 0;


  @override
  Widget build(BuildContext context) {

    MyInputOnChange(InputKey, InputValue){
      setState(() {
        FormValue.update(InputKey, (value) =>  double.parse(InputValue));
      });
    }


    AddAllNumber(){
      setState((){
        SUM =  FormValue['Num1']! + FormValue['Num1']! + FormValue['Num1']!;
      });



    }


    return Scaffold(
      appBar: AppBar(title: Text("Add"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(SUM.toString(), style: HeadTextStyle(),),
            SizedBox(height: 20, ),
            TextFormField(onChanged:(value){
              // Set Value to Num1
              MyInputOnChange("Num1", value);

            } ,    decoration: AppInPutStyle("First Number"),
            ),

            SizedBox(height: 20,),
            TextFormField( onChanged:(value){
              // Set Value to Num2
              MyInputOnChange("Num3", value);

            } ,    decoration: AppInPutStyle("Second Number"),),
            SizedBox(height: 20,),
            TextFormField(onChanged:(value){
              // Set Value to Num1
              MyInputOnChange("Num3", value);

            } ,decoration: AppInPutStyle("Third Number"),),
            SizedBox(height: 20,),
           Container(
              width: double.infinity,
              child:
                ElevatedButton(style:AppButtonStyle(), onPressed: (){
                  AddAllNumber();
                }, child: Text("Add"),),

            ),
          ],

        ),
      ),
    );
  }
}

