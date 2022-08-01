import 'package:flutter/material.dart';


class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  int count=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.transparent ,

      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/body_sebha_logo.png')
          ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(

                onPressed: onclick,child: Text('$count'),)
            ],
          ),
          SizedBox(height: 50,),


        ],
      ) ,


    );
  }

  void onclick(){
    count++;
    setState(() {});
  }
}
