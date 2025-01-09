import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20, top: 20, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Notes App",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Text(
                "I am anas bouzi flutter mobile app developer",
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.trash,
                size: 24,
                color: Colors.black.withOpacity(.4),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "9 January 2025",
              style:
                  TextStyle(color: Colors.black.withOpacity(.4), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
