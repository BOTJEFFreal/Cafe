import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GuruListTile.dart';

class GURUList extends StatefulWidget {
  final List list;
  final skill;
  const GURUList({Key? key, required this.list, required this.skill}) : super(key: key);

  @override
  State<GURUList> createState() => _GURUListState();
}

class _GURUListState extends State<GURUList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.list.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                color: Colors.grey[200],
                child: GuruListTile(
                  name: widget.list[index][0],
                  rating: widget.list[index][5],
                  exp: widget.list[index][4],
                  desc: widget.list[index][2],
                  field: widget.list[index][3],
                  index: index, skill: widget.skill,
                ),
              ),
            ),
          );
        });
  }
}
