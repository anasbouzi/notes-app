import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/notes_list_view.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState;
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          child: Column(
            children: [
              CustomAppBar(
                title: "Notes",
                icon: Icons.search,
              ),
              Expanded(child: NoteListView()),
            ],
          ),
        ),
      ),
    );
  }
}
