import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Catatan'),
        ),
        body: MyNoteForm(),
      ),
    );
  }
}

class MyNoteForm extends StatefulWidget {
  @override
  _MyNoteFormState createState() => _MyNoteFormState();
}

class _MyNoteFormState extends State<MyNoteForm> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  String submittedTitle = '';
  String submittedContent = '';

  void clearTextFields() {
    titleController.clear();
    contentController.clear();
  }

  void submitNote() {
    setState(() {
      submittedTitle = titleController.text;
      submittedContent = contentController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center the entire column.
      children: <Widget>[
        TextField(
          controller: titleController,
          decoration: InputDecoration(labelText: 'Note Title'),
        ),
        TextField(
          controller: contentController,
          maxLines: null, // Allows multiple lines for long text input.
          decoration: InputDecoration(labelText: 'Note Content'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the buttons in the row.
          children: <Widget>[
            ElevatedButton(
              onPressed: clearTextFields,
              child: Text('Clear'),
            ),
            ElevatedButton(
              onPressed: submitNote,
              child: Text('Submit'),
            ),
          ],
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text('Note Title:', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(submittedTitle),
              Text('Note Content:', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(submittedContent),
            ],
          ),
        ),
      ],
    );
  }
}
