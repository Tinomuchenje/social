import 'package:flutter/material.dart';

import 'components/custom_app_bar.dart';

class ShoppingHomePage extends StatefulWidget {
  const ShoppingHomePage({Key? key}) : super(key: key);

  @override
  _ShoppingHomePageState createState() => _ShoppingHomePageState();
}

class _ShoppingHomePageState extends State<ShoppingHomePage> {
  int resultsCount = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'shopping'),
      body: SafeArea(
        child: Column(
          children: [
            const Divider(
              thickness: 1,
            ),
            _topInformationSection()
          ],
        ),
      ),
    );
  }

  Padding _topInformationSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Search Results',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          Text(
            'About $resultsCount results',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.grey[400]),
          )
        ],
      ),
    );
  }
}
