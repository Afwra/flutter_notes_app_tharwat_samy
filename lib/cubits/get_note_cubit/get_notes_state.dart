part of 'get_notes_cubit.dart';

@immutable
sealed class GetNotesState {}

final class GetNotesInitial extends GetNotesState {}

final class GetNoteLoading extends GetNotesState {}

final class GetNoteSuccess extends GetNotesState {
  final List<NoteModel> notes;

  GetNoteSuccess({required this.notes});
}

final class GetNoteFail extends GetNotesState {
  final String errorMsg;

  GetNoteFail({required this.errorMsg});
}
