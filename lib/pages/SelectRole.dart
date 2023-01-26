import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sheets_as_db/pages/LandingPage.dart';
import 'package:sheets_as_db/pages/sign_up/GURUsignUpPage.dart';

import 'USERsign_up/USERsignUpPage.dart';


class SelectRole extends StatefulWidget {
  const SelectRole({Key? key}) : super(key: key);

  @override
  State<SelectRole> createState() => _SelectRoleState();
}

class _SelectRoleState extends State<SelectRole> {
  @override
  Widget build(BuildContext context) {
    bool isElevated = true;
    return Container(
      color: Colors.grey[300],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Select",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.grey[800]),),
            GestureDetector(
                onTap: (){
                  setState(() {
                    isElevated = !isElevated;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const USERsignUpPage()),
                    );
                  });
                },

                child: AnimatedContainer(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: isElevated
                        ? [
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
                    ] : null,
                  ), duration: Duration(milliseconds: 200),
                  child: Center(child: Text("User",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.grey[800]),)),
                )),
            GestureDetector(
                onTap: (){
                  setState(() {
                    isElevated = !isElevated;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GURUsignUpPage()),
                    );
                  });
                },

                child: AnimatedContainer(
                  child: Center(child: Text("GURU",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.grey[800]),)),
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: isElevated
                        ? [
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
                    ] : null,
                  ), duration: Duration(milliseconds: 200),
                )),
          ],
        ),
      ),
    );
  }
}