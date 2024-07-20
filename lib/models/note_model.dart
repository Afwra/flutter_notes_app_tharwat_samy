class NoteModel {
  final String title;
  final String subTitle;
  final String date;
  final int color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      title: json['title'],
      subTitle: json['subTitle'],
      date: json['date'],
      color: json['color'],
    );
  }
}
