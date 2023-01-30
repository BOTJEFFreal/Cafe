import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/GURUlist/listBuild.dart';
import '../../constants/constants.dart';

class GURUlist extends StatefulWidget {
  const GURUlist({Key? key}) : super(key: key);

  @override
  State<GURUlist> createState() => _GURUlistState();
}

class _GURUlistState extends State<GURUlist> {
  String? dropDownValue;

  @override
  Widget build(BuildContext context) {
    List<String> cityList = [
      'A','B','C','D'
    ];
    return Container(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
              width: 600,
              child: DecoratedBox(
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
                    hint: Text("Select Field"),
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
            ),
            SizedBox(height: 40,),
            Expanded(
              child: Container(
               child: GURUList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


