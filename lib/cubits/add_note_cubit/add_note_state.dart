part of 'add_note_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNoteInitial extends AddNotesState {}

final class AddNoteLoading extends AddNotesState {}

final class AddNoteSuccess extends AddNotesState {}

final class AddNotesFailure extends AddNotesState {
  final String errMessage;

  AddNotesFailure(this.errMessage);
}
