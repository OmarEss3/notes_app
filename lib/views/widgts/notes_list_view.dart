

import 'package:flutter/material.dart';
import 'package:note_app/views/widgts/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (index, context) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(),
      );
    });
  }
}
