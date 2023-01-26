import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../constants/constants.dart';
import 'components/credentials.dart';
import 'components/head_text.dart';

class USERsignUpPage extends StatelessWidget {
  const USERsignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            lightPrimary,
            darkPrimary,
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadText(),
              Credentials(),
            ],
          ),
        ),
      ),
    );
  }
}
