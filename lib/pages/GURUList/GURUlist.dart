import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../API/sheetAPI.dart';
import '../../components/GURUlist/listBuild.dart';
import '../../constants/constants.dart';
import '../loading_circle.dart';

class GURUlist extends StatefulWidget {
  const GURUlist({Key? key}) : super(key: key);

  @override
  State<GURUlist> createState() => _GURUlistState();
}

class _GURUlistState extends State<GURUlist> {
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
                Container(
                  width: 400,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              lightPrimary,
                              darkPrimary,
                            ]),
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
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 0.0),
                      child: DropdownButton<String>(
                        value: dropDownValue,
                        icon: Icon(null),
                        hint: Text("Select Field"),
                        elevation: 16,
                        onChanged: (var newValue) {
                          setState(() {
                            dropDownValue = newValue;
                          });
                        },
                        underline: SizedBox(),
                        items: ListofSkill.map<DropdownMenuItem<String>>(
                            (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: FutureBuilder<List>(
                future: GETgurulist(dropDownValue),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Text(
                        "Select A Skill",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black54),
                      ),
                    );
                  }
                  if (snapshot.hasData) {
                    List data = snapshot.data ?? [];
                    return Expanded(
                        child: GURUList(
                      list: data,
                    ));
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  // By default show a loading spinner.
                  return LoadingCircle();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
