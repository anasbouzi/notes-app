import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: color,
            ),
          )
        :  CircleAvatar(
            radius: 28,
            backgroundColor:color,
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
  List<Color> color = const [
    Color(0xff734B5E),
    Color(0xffBCBDC0),
    Color(0xff565857),
    Color(0xff8A8D91),
    Color(0xffACFCD9),
    Color(0xff5DD9C1),
    Color(0xffBF98A0),
    Color(0xffAA8F66),
    Color(0xffBA3B46),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: color.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: color[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
