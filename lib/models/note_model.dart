import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final int color;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final String subTitle;

  NoteModel(
      {required this.title,
      required this.color,
      required this.date,
      required this.subTitle});
}
