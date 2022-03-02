import 'package:flutter/material.dart';
class SmallScreen extends StatelessWidget {
  const SmallScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    return Container(
      constraints: const BoxConstraints.expand(),
      color: Colors.green,
    );
  }
}