import 'package:flutter/material.dart';

class CustomSearchItem extends StatelessWidget {
  const CustomSearchItem({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            color: Colors.white,
            size: 28,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
