import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../API/Auth.dart';
import '../../components/Login/login_button.dart';
import '../../components/Login/login_textField.dart';
import '../../constants/constants.dart';
import '../Login/loginPage.dart';
import 'components/credentials.dart';
import 'components/head_text.dart';

class USERsignUpPage extends StatefulWidget {
  const USERsignUpPage({Key? key}) : super(key: key);

  @override
  State<USERsignUpPage> createState() => _USERsignUpPageState();
}

class _USERsignUpPageState extends State<USERsignUpPage> {
  final usernameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  var isLoading = false;

  Signup(String _username,String _email, String _password, var _screen) {
    print(_username);
    print(_email);
    print(_password);
    if (_email.isNotEmpty && _password.isNotEmpty) {
      createAccount(_username,_email, _password).then((user) {
        if (user != null) {
          print("-------------------------------------");
          print(user);
          print("-------------------------------------");


          Navigator.push(context, MaterialPageRoute(builder: (_) => _screen()));
        } else {
          print("Login Failed");
          print("-------------------------------------");
          print("FFFFFFFFFFFFFFFFFFFF");
          print("-------------------------------------");
        }
      });
    } else {
      print("Please fill form correctly");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // welcome back, you've been missed!
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // email textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 35),

                // sign in button
                MyButton(
                    onTap: Signup(usernameController.text,emailController.text,
                        passwordController.text, LoginPage())),

                const SizedBox(height: 50),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));

    //   Container(
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //       begin: Alignment.topCenter,
    //       end: Alignment.bottomCenter,
    //       colors: [
    //         lightPrimary,
    //         darkPrimary,
    //       ]
    //     )
    //   ),
    //   child:
    //   Scaffold(
    //     backgroundColor: Colors.transparent,
    //     body: SingleChildScrollView(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           HeadText(),
    //           Credentials(),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
