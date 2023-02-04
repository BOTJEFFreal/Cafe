import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class USERListTile extends StatefulWidget {
  final desc;
  final name;
  final index;
  const USERListTile(
      {Key? key,
      required this.name,
      required this.index,
      required this.desc})
      : super(key: key);

  @override
  State<USERListTile> createState() => _USERListTileState();
}

class _USERListTileState extends State<USERListTile> {
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
        fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey[800]);
    return AnimatedContainer(
      decoration: decoration,
      duration: Duration(milliseconds: 200),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${widget.index}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black54)),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 5,
                      children: [
                        Text(
                          "Name: ${widget.name}",
                          style: testStyle,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green[800]!,
                                  offset: const Offset(0, 0),
                                  // blurRadius: 15,
                                  spreadRadius: 2,
                                ),
                              ]),
                          child: Center(
                              child: Text(
                            "Accept",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70),
                          )),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red[800]!,
                                  offset: const Offset(0, 0),
                                  // blurRadius: 15,
                                  spreadRadius: 2,
                                ),
                              ]),
                          child: Center(
                              child: Text(
                            "Deny",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70),
                          )),
                        )),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Problem: ${widget.desc}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black54),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            )
          ],
        ),
      ),
    );
  }
}
