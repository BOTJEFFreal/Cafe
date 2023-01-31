import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'UserListTile.dart';

class USERList extends StatefulWidget {
  const USERList({Key? key}) : super(key: key);

  @override
  State<USERList> createState() => _USERListState();
}

class _USERListState extends State<USERList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                color: Colors.grey[200],
                child: USERListTile(name: null,index: null, desc: null,),
              ),
            ),
          );
        });
  }
}
