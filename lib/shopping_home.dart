import 'package:flutter/material.dart';

import 'components/custom_app_bar.dart';
import 'components/profile.dart';
import 'profile.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _topInformationSection(),
              Expanded(
                  child: GridView.count(
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                crossAxisCount: 2,
                children: _buildProfiles(),
              ))
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildProfiles() {
    List<Widget> profiles = [];
    for (var profile in Profile.profiles) {
      profiles.add(ProfileView(profile: profile));
    }
    return profiles;
  }

  Padding _topInformationSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Search Results',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
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
