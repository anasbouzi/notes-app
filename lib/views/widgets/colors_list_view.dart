import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';

import '../../constant.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 28,
            backgroundColor: color,
          );
  }
}

class ItemColorList extends StatefulWidget {
  const ItemColorList({super.key});

  @override
  State<ItemColorList> createState() => _ItemColorListState();
}

class _ItemColorListState extends State<ItemColorList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
