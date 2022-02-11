class Profile {
  String name;
  String profilePictureUrl;
  Profile({
    required this.name,
    required this.profilePictureUrl,
  });

  static List<Profile> profiles = [
    Profile(name: 'one', profilePictureUrl: 'assets/images/one.jpg'),
    Profile(name: 'four', profilePictureUrl: 'assets/images/four.jpg'),
    Profile(name: 'eight', profilePictureUrl: 'assets/images/eight.jpg'),
    Profile(name: 'two', profilePictureUrl: 'assets/images/two.jpg'),
    Profile(name: 'five', profilePictureUrl: 'assets/images/five.jpg'),
    Profile(name: 'seven', profilePictureUrl: 'assets/images/seven.jpg'),
  ];
}
