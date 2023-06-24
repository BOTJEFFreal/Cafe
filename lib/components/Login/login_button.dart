import 'package:flutter/material.dart';

import '../../API/Auth.dart';

class MyButton extends StatelessWidget {
  Future Function()? onTap;

  MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

Widget customButton(String _email, String _password, var _screen,context) {
  return GestureDetector(
    onTap: () {
      if (_email.isNotEmpty && _password.isNotEmpty) {
        logIn(_email, _password).then((user) {
          if (user != null) {
            print("Login Sucessfull");

            Navigator.push(
                context, MaterialPageRoute(builder: (_) => _screen()));
          } else {
            print("Login Failed");
          }
        });
      } else {
        print("Please fill form correctly");
      }
    },
    child: Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    ),
  );
}
