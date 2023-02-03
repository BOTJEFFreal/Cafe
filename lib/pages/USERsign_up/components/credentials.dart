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
  final TextEditingController UserController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
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
          RectangularInputField(
            controller: PasswordController,
            hintText: 'Password',
            icon: Icons.lock,
            obscureText: true,
          ),
          SizedBox(
            height: 12 / 2,
          ),


          RectangularButton(text: 'Sign In',width: double.infinity,fontSize: 20, press: (){
            print(UserController.text);
          })
        ],
      ),
    );
  }
}
