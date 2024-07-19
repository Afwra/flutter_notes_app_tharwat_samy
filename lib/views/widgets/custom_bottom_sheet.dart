import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextField(),
        ],
      ),
    );
  }
}
