import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/custom_note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

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
              CustomAppBar(),
              NoteItem(),
            ],
          ),
        ),
      ),
    );
  }
}
