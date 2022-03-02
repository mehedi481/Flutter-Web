import 'package:flutter/material.dart';
class LargeScreen extends StatelessWidget {
  const LargeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    return Row(children: [
      Expanded(child: Container(color: Colors.red,),),
      Expanded(flex: 5,child: Container(color: Colors.blue,),),
    ]);
  }
}