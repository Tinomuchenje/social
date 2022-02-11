import 'package:flutter/material.dart';
import 'package:social/constants/style_constants.dart';

import '../profile.dart';

class ProfileView extends StatelessWidget {
  final Profile profile;

  const ProfileView({
    Key? key,
    required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: defaultBorderRadius,
      child: Image.asset(
        profile.profilePictureUrl,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return const Placeholder();
        },
      ),
    );
  }
}
