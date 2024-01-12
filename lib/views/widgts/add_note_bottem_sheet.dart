import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/Constants.dart';
import 'package:note_app/cubits/cubit/add_notes_cubit.dart';
import 'package:note_app/views/widgts/custom_bottom.dart';
import 'package:note_app/views/widgts/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesFailure) {
              print('failure ${state.errMessage}');
            }
            if (state is AddNotesSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNotesLoading ? true : false,
                child: const _AddNoteFormState());
          },
        ),
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
                setState(() {});
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
