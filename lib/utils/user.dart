class User {
  final String name;
  final String proname;
  final String proffes;
  final String email;
  final String bio;
  final String loc;

  const User({
    required this.name,
    required this.proname,
    required this.proffes,
    required this.email,
    required this.bio,
    required this.loc,
});

  User copy({
    String? name,
    String? proname,
    String? proffes,
    String? email,
    String? bio,
    String? loc,
}) => User(
    name: name ?? this.name,
    proname: proname ?? this.proname,
    proffes: proffes ?? this.proffes,
    email: email ?? this.email,
    bio: bio ?? this.bio,
    loc: loc ?? this.loc,
  );

  static User fromJson(Map<String, dynamic> json) => User(
    name: json['name'],
    proname: json['proname'],
    proffes: json['proffes'],
    email: json['email'],
    bio: json['bio'],
    loc: json['loc'],
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'proname': proname,
    'proffes': proffes,
    'email': email,
    'bio': bio,
    'loc': loc,
  };
}