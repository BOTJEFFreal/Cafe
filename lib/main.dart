import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:sheets_as_db/pages/LandingPage.dart';
import 'package:sheets_as_db/pages/sign_up/GURUsignUpPage.dart';

//creds
const _credentials = r'''
''';

//spreadsheet id
const _spreadsheetID = "";

void main() async {
  // //init
  // final gsheets = GSheets(_credentials);
  // //fetch by ID
  // final ss = await gsheets.spreadsheet(_spreadsheetID);
  // //get WS by ID
  // var sheet = ss. worksheetByTitle('USER');
  // // add to cell
  runApp(MaterialApp(
    home: Scaffold(
      body: LandingPage(),
    ),
  ));
}



