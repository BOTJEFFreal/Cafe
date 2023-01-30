import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GuruListTile.dart';

class GURUList extends StatefulWidget {
  const GURUList({Key? key}) : super(key: key);

  @override
  State<GURUList> createState() => _GURUListState();
}

class _GURUListState extends State<GURUList> {
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
                child: GuruListTile(name: null, rating: null, exp: null, desc: null, field: null,),
              ),
            ),
          );
        });
  }
}
