import 'package:flutter/material.dart';
import 'package:notes/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[300],
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NoteViewBody(),
    );
  }
}
