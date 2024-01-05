import 'package:flutter/material.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/views/widgts/custom_bottom.dart';
import 'package:note_app/views/widgts/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: SingleChildScrollView(
        child: _AddNoteFormState(),
      ),
    );
  }
}

class _AddNoteFormState extends StatefulWidget {
  const _AddNoteFormState({
    super.key,
  });

  @override
  State<_AddNoteFormState> createState() => _AddNoteFormStateState();
}

class _AddNoteFormStateState extends State<_AddNoteFormState> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            onSaved: (value) {
              title = value;
            },
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
