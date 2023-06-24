import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sheets_as_db/pages/DetailGURUpage/DetailGURUpage.dart';
import 'package:sheets_as_db/pages/GURUList/GURUlist.dart';
import 'package:sheets_as_db/pages/GURUsign_up/GURUsignUpPage.dart';
import 'package:sheets_as_db/pages/LandingPage.dart';
import 'package:sheets_as_db/pages/Login/loginPage.dart';
import 'package:sheets_as_db/pages/USERsign_up/USERsignUpPage.dart';
import 'package:sheets_as_db/pages/UsersList/Userlist.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // // add to cell
  runApp(MaterialApp(
    home: Scaffold(
      body: USERsignUpPage(),
    ),
  ));
}



