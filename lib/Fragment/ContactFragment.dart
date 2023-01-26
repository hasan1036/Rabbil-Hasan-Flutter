import 'package:flutter/material.dart';

class ContactFragment extends StatelessWidget {
  const ContactFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:

        Column(
          children: [
            Text("This is my ContactFragment", style: TextStyle(fontSize: 30, color: Colors.blue),),
            Text("This is my ContactFragment", style: TextStyle(fontSize: 30, color: Colors.blue),),
            Text("This is my ContactFragment", style: TextStyle(fontSize: 30, color: Colors.blue),),
            Text("This is my ContactFragment", style: TextStyle(fontSize: 30, color: Colors.blue),),
            Text("This is my ContactFragment", style: TextStyle(fontSize: 30, color: Colors.blue),),
          ],
        ),
      ),
    );
  }
}
