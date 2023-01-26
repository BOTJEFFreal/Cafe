import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/rectangular_button.dart';
import '../../../components/rectangular_desc_field.dart';
import '../../../components/rectangular_input_field.dart';
import '../../../constants/constants.dart';



class Credentials extends StatefulWidget {
  const Credentials({Key? key}) : super(key: key);

  @override
  State<Credentials> createState() => _CredentialsState();
}

class _CredentialsState extends State<Credentials> {
  @override
  Widget build(BuildContext context) {
    String? dropDownValue;
    List<String> cityList = [
      'A','B','C','D'
    ];



    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RectangularInputField(
            hintText: 'Username',
            icon: Icons.person,
            obscureText: false,
          ),
          SizedBox(
            height: 12 / 2,
          ),
          RectangularInputField(
            hintText: 'Email',
            icon: Icons.email_rounded,
            obscureText: false,
          ),
          SizedBox(
            height: 12 / 2,
          ),
          RectangularInputField(
            hintText: 'Password',
            icon: Icons.lock,
            obscureText: true,
          ),
          RectangularInputField(
            hintText: 'Password',
            icon: Icons.lock,
            obscureText: true,
          ),
          RectangularDescField(
            hintText: 'Description',
            obscureText: true,
          ),
          SizedBox(
            height: 12 / 2,
          ),

        DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    lightPrimary,
                    darkPrimary,
                  ]
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  offset: const Offset(4, 4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(-4, -4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
              ]
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
            child: DropdownButton<String>(
              value: dropDownValue,
              icon: Icon(null),
              hint: Text("Select"),
              elevation: 16,
              onChanged: (var newValue) {
                setState(() {
                  dropDownValue = newValue;
                });
              },
              underline: SizedBox(),
              items: cityList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),

          RectangularButton(text: 'Sign In', press: (){})
        ],
      ),
    );
  }
}
