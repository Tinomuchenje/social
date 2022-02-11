import 'package:flutter/material.dart';
import 'package:social/shopping/data/profile_model.dart';

class ProfileOverviewDetails extends StatelessWidget {
  const ProfileOverviewDetails({
    Key? key,
    required this.profile,
  }) : super(key: key);

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.red,
          backgroundImage: AssetImage(profile.profilePictureUrl),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          profile.name,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}