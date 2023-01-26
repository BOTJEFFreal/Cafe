import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed:()=> (print("user")), child: Container(child: Text("USer"),)),
        TextButton(onPressed:()=> (print("GURU")), child: Container(child: Text("GURU"),))
      ],
    );
  }
}
