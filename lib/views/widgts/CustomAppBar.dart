import 'package:flutter/material.dart';
import 'package:note_app/views/widgts/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            'Notes ',
            style: TextStyle(fontSize: 28),
          ),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
