import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/USERlist/listBuild.dart';



class Userlist extends StatefulWidget {
  final desc;
  final rate;
  final name;
  final rating;
  final exp;
  const Userlist({Key? key, this.desc, this.rate, this.name, this.rating, this.exp}) : super(key: key);

  @override
  State<Userlist> createState() => _UserlistState();
}

class _UserlistState extends State<Userlist> {
  String? dropDownValue;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[300],
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black54,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 100,),
                Text("Current Requests",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ))
              ],
            ),
            SizedBox(height: 16,),
            Expanded(
              child: Container(
                child:USERList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


