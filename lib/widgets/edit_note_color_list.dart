import 'package:flutter/widgets.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currIndex = index;
            widget.note.color = kColors[index].value;
            setState(() {});
          },
          child: ColorItem(
            isActive: widget.note.color == kColors[index].value,
            backGroundColor: kColors[index],
          ),
        ),
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
