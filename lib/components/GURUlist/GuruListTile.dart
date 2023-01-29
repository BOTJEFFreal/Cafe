import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class GuruListTile extends StatefulWidget {
  const GuruListTile({Key? key}) : super(key: key);

  @override
  State<GuruListTile> createState() => _GuruListTileState();
}

class _GuruListTileState extends State<GuruListTile> {
  @override
  Widget build(BuildContext context) {
    var decoration =
        BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
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
    ]);
    var testStyle = TextStyle(
        fontWeight: FontWeight.w500, fontSize: 15, color: Colors.grey[800]);
    return AnimatedContainer(
      decoration: decoration,
      duration: Duration(milliseconds: 200),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: Icon(Icons.account_circle,
                          size: 50, color: Colors.red),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 5,
                      children: [
                        Text(
                          "Name: ABCD",
                          style: testStyle,
                        ),
                        Text(
                          "Rating: 5star",
                          style: testStyle,
                        ),
                        Text(
                          "Exp: 1K+ hours",
                          style: testStyle,
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    "App Dev",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Open Sans',)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean",style:  TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black54),),
            )
          ],
        ),
      ),
    );
  }
}
