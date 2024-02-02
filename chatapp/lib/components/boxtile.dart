import 'package:flutter/material.dart';

class BoxTile extends StatelessWidget {
  final String image_path;
  const BoxTile({super.key, required this.image_path});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(11)),
      child: Image.asset(
        image_path,
        height: 60,
      ),
    );
  }
}
