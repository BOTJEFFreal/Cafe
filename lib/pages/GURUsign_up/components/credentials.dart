import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../API/sheetAPI.dart';
import '../../../components/neumorphic_dropdown.dart';
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
  final TextEditingController UserController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  final TextEditingController DescController = TextEditingController();

  String? dropDownValue;

  @override
  void initState() {
    super.initState();
    UserController.addListener(() => setState(() {}));
    EmailController.addListener(() => setState(() {}));
    PasswordController.addListener(() => setState(() {}));
    DescController.addListener(() => setState(() {}));
  }

  // void _post() {
  //   GoogleSheetsApi.insert(UserController.text);
  //   UserController.clear();
  //   setState(() {});
  // }


  @override
  Widget build(BuildContext context) {
    List<String> cityList = [
      'A','B','C','D'
    ];

    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RectangularInputField(
            controller: UserController,
            hintText: 'Username',
            icon: Icons.person,
            obscureText: false,
          ),
          SizedBox(
            height: 12 / 2,
          ),
          RectangularInputField(
            controller: EmailController,
            hintText: 'Email',
            icon: Icons.email_rounded,
            obscureText: false,
          ),
          SizedBox(
            height: 12 / 2,
          ),
          // RectangularInputField(
          //   controller: PasswordController ,
          //   hintText: 'Password',
          //   icon: Icons.lock,
          //   obscureText: true,
          // ),
          RectangularDescField(
            controller: DescController ,
            hintText: 'Description',
            obscureText: false,
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

          RectangularButton(text: 'Sign In', press: (){
            print('USERNAME: ${UserController.text}');
            print('EMAIL: ${EmailController.text}');
            print('PASS: ${PasswordController.text}');
            print('DESC: ${DescController.text}');
            print('DropDown: ${dropDownValue}');
            // _post();
            ADDguru(UserController.text,EmailController.text,DescController.text,dropDownValue);
          })
        ],
      ),
    );
  }
}
