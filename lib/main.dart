import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:sheets_as_db/pages/LandingPage.dart';

//creds
const _credentials = r'''
''';

//spreadsheet id
const _spreadsheetID = "1sIY74Su1fnMYRLhpNL4kzISNus5wbeWirdalGCApiLo";

void main() async {
  // //init
  // final gsheets = GSheets(_credentials);
  // //fetch by ID
  // final ss = await gsheets.spreadsheet(_spreadsheetID);
  // //get WS by ID
  // var sheet = ss.worksheetByTitle('USER');
  // // add to cell
  runApp(MaterialApp(
    home: Scaffold(
      body: LandingPage(),
    ),
  ));
}



