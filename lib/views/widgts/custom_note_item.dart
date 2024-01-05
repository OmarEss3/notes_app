
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(0xffffcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: const Text(
            'Flutter tips',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Build your career with Omar Essam',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 18  ,
              ),
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
              size: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            'January5,2024',
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
      ]),
    );
  }
}
