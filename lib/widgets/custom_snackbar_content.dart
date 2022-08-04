import 'package:flutter/material.dart';

class CustomSnackBarContent extends StatefulWidget {
  const CustomSnackBarContent({super.key});

  @override
  State<CustomSnackBarContent> createState() => _CustomSnackBarContentState();
}

class _CustomSnackBarContentState extends State<CustomSnackBarContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 90,
      decoration: const BoxDecoration(
        color: Color(0xFFC72C41),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Text('Algo não está bem'),
    );
  }
}
