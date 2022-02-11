
import 'package:flutter/material.dart';
import 'package:social/constants/style_constants.dart';
import 'package:social/shopping/data/profile_model.dart';

class ProfileCover extends StatelessWidget {
  const ProfileCover({
    Key? key,
    required this.profile,
  }) : super(key: key);

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: defaultBorderRadius,
      child: Image.asset(
        profile.profilePictureUrl,
        color: Colors.grey[400]!.withOpacity(0.85),
        colorBlendMode: BlendMode.modulate,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return const Placeholder();
        },
      ),
    );
  }
}
