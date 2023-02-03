import 'package:flutter/material.dart';

import '../../components/rectangular_button.dart';
import '../../components/rectangular_desc_field.dart';

class DetailGURUpage extends StatefulWidget {
  final desc;
  final rate;
  final name;
  final rating;
  final exp;
  const DetailGURUpage(
      {Key? key, this.desc, this.rate, this.name, this.rating, this.exp})
      : super(key: key);

  @override
  State<DetailGURUpage> createState() => _DetailGURUpageState();
}

class _DetailGURUpageState extends State<DetailGURUpage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController DescController = TextEditingController();
    var testStyle = TextStyle(
        fontWeight: FontWeight.w500, fontSize: 18, color: Colors.grey[800]);
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
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
          SizedBox(height: 8,),
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      offset: const Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                ]),
            child: Center(
                child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.account_circle,
                            size: 100, color: Colors.red),
                        const SizedBox(
                          width: 16,
                        ),
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 5,
                          children: [
                            Text(
                              "Name: ${widget.name}",
                              style: testStyle,
                            ),
                            Text(
                              "Rating:  ${widget.rating}star",
                              style: testStyle,
                            ),
                            Text(
                              "Exp:  ${widget.exp}K+ hours",
                              style: testStyle,
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: Text("₹${widget.rate}/hour",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Open Sans',
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${widget.desc}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black54),
                )
              ],
            )),
          ),
          SizedBox(
            height: 20,
          ),
          RectangularDescField(
            controller: DescController,
            hintText: 'The problem you want to discuss...',
            obscureText: false,
          ),
          SizedBox(
            height: 10,
          ),
          RectangularButton(
              text: 'Connect',
              press: () {
                print('DESC: ${DescController.text}');
              }, fontSize: 20,width: double.infinity,
          )
        ],
      ),
    );
  }
}
