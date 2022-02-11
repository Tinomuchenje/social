import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  CustomAppBar({
    Key? key,
    required this.title,
  })  : preferredSize = const Size.fromHeight(85),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      backgroundColor: Colors.white,
      flexibleSpace: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45.0),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
