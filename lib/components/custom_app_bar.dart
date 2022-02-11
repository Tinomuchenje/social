import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;

  double? elevation;
  CustomAppBar({
    Key? key,
    required this.title,
    this.elevation,
  })  : preferredSize = const Size.fromHeight(85),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation ?? 1,
      backgroundColor: Colors.white,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          )),
      flexibleSpace: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 33.0),
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
