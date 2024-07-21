import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'get_notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  GetNotesCubit() : super(GetNotesInitial());

  void getAllNotes() {
    emit(GetNoteLoading());
    try {
      Box notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList() as List<NoteModel>;
      emit(GetNoteSuccess(notes: notes));
    } catch (e) {
      emit(GetNoteFail(errorMsg: e.toString()));
    }
  }
}
