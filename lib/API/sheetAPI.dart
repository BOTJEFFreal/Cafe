import 'package:gsheets/gsheets.dart';
import '../constants/constants.dart';

void ADDguru(UserName,Email,Desc,Skill) async {
  final gsheets = GSheets(credentials);
  final ss = await gsheets.spreadsheet(spreadsheetId);
  var sheet = ss.worksheetByTitle('GURU');
  sheet ??= await ss.addWorksheet('GURU');
  await sheet.values.appendRow(
    [UserName,Email,Desc,Skill],
  );
}

