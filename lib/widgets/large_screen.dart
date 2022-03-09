import 'package:flutter/material.dart';
import 'package:flutter_webapp_santos/widgets/side_menu.dart';
class LargeScreen extends StatelessWidget {
  const LargeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    return Row(children: [
      const Expanded(child: SideMenu(),),
      Expanded(flex: 5,child: Container(color: Colors.blue,),),
    ]);
  }
}