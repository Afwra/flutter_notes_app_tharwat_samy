import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(
      {super.key, required this.isActive, required this.backGroundColor});
  final bool isActive;
  final Color backGroundColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: isActive
          ? CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: backGroundColor,
                radius: 30,
              ),
            )
          : CircleAvatar(
              backgroundColor: backGroundColor,
              radius: 32,
            ),
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currIndex = index;
            BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
            setState(() {});
          },
          child: ColorItem(
            isActive: currIndex == index,
            backGroundColor: kColors[index],
          ),
        ),
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
