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
    var name = ["Deacon Le","Suhail Khan","Liliana Colon","Aruna Mittal","Kushal Rai"];
    var desx = ["Why am I not able to adhere to a particular signature?","With years of practice I feel like I still lack musicianship","Unable to reach a high note","Unable to devote time","Unable to decide which kind of mic to buy"];
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                color: Colors.grey[200],
                child: USERListTile(name: name[index],index: index+1, desc: desx[index],),
              ),
            ),
          );
        });
  }
}
