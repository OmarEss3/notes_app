import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/widgts/CustomAppBar.dart';
import 'package:note_app/views/widgts/custom_note_item.dart';
import 'package:note_app/views/widgts/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}
