import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class NeumorphicDropDown extends StatefulWidget {
  final list;

  final function;
  // static late String? dropDownValue;
  const NeumorphicDropDown({Key? key, required this.list, required this.function }) : super(key: key);

  @override
  State<NeumorphicDropDown> createState() => _NeumorphicDropDownState();
}

class _NeumorphicDropDownState extends State<NeumorphicDropDown> {

  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.list.first;

    return DecoratedBox(
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
          value: dropdownValue,
          icon: Icon(null),
          hint: Text("Select"),
          elevation: 16,
          onChanged: widget.function
          //     (var newValue) {
          //   setState(() {
          //     dropdownValue = newValue!;
          //   });
          // }
          ,
          underline: SizedBox(),
          items: widget.list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
