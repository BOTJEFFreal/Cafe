import 'package:gsheets/gsheets.dart';
import '../constants/constants.dart';
import '../models/GURUelement.dart';

ADDguru(UserName, Email, Desc, Skill) async {
  final gsheets = GSheets(credentials);
  final ss = await gsheets.spreadsheet(spreadsheetId);
  var sheet = ss.worksheetByTitle(Skill);
  sheet ??= await ss.addWorksheet(Skill);
  await sheet.values.appendRow(
    [UserName, Email, Desc, Skill],
  );
}
Future<List> GETgurulist(Skill) async {
  List currentNotes = [];

  final gsheets = GSheets(credentials);
  final ss = await gsheets.spreadsheet(spreadsheetId);
  var sheet = ss.worksheetByTitle(Skill);

  while ((await sheet!.values.value(column: 1, row: numberOfNotes + 1)) != '') {
    numberOfNotes++;
  }
  print(numberOfNotes);
  for (int i = 1; i < numberOfNotes; i++) {
    final List newNote = await sheet.values.row(i);
      // currentNotes.add(GURUelement(
      //     username: newNote[0],
      //     email: newNote[1],
      //     desc: newNote[2],
      //     skill: newNote[3],
      //     stars: newNote[4],
      //     rate: newNote[5]));
    currentNotes.add(newNote);
  }
  // numberOfNotes = 0;
  print(currentNotes);
  return currentNotes;
}
