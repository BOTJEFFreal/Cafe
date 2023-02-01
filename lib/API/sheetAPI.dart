import 'package:gsheets/gsheets.dart';
import '../constants/constants.dart';

class GoogleSheetsApi {
  // create credentials

  static final _gsheets = GSheets(credentials);
  static Worksheet? _worksheet;

  // some variables to keep track of..
  static int numberOfNotes = 0;
  static List<List<dynamic>> currentNotes = [];
  static bool loading = true;

  // initialise the spreadsheet!
  Future init() async {
    final ss = await _gsheets.spreadsheet(spreadsheetId);
    _worksheet = ss.worksheetByTitle('Products'
        '');
    countRows();
  }

  // count the number of notes
  static Future countRows() async {
    while (
    (await _worksheet!.values.value(column: 1, row: numberOfNotes + 1)) !=
        '') {
      numberOfNotes++;
    }
    // now we know how many notes to load, now let's load them!
    loadNotes();
  }

  // load existing notes from the spreadsheet
  static Future loadNotes() async {
    if (_worksheet == null) return;

    for (int i = 0; i < numberOfNotes; i++) {
      final String newNote =
      await _worksheet!.values.value(column: 1, row: i + 1);
      if (currentNotes.length < numberOfNotes) {
        currentNotes.add([
          newNote,
          int.parse(await _worksheet!.values.value(column: 2, row: i + 1))
        ]);
      }
    }

    loading = false;
  }

  // insert a new note
  static Future insert(String note) async {
    if (_worksheet == null) return;
    numberOfNotes++;
    currentNotes.add([note, 0]);
    await _worksheet!.values.appendRow([note, 0]);
  }

  static Future update(int index, int isTaskCompleted) async {
    _worksheet!.values.insertValue(isTaskCompleted, column: 2, row: index + 1);
  }
}