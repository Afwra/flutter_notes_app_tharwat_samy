import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/get_note_cubit/get_notes_cubit.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
        if (state is GetNoteSuccess) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,
                ),
                child: NoteItem(
                  note: state.notes[index],
                ),
              ),
              itemCount: state.notes.length,
            ),
          );
        } else {
          return const Center(
            child: Text(
              'No Notes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }
      },
    );
  }
}
