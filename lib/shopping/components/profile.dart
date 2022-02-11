import 'package:flutter/material.dart';
import 'package:social/shopping/components/profile_overview_details.dart';

import '../data/profile_model.dart';
import 'profile_cover.dart';

class ProfileView extends StatelessWidget {
  final Profile profile;

  const ProfileView({
    Key? key,
    required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.bottomStart, children: [
      SizedBox(
        width: 200,
        child: ProfileCover(profile: profile),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ProfileOverviewDetails(profile: profile),
      )
    ]);
  }
}
