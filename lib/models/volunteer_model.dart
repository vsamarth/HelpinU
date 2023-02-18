import 'package:helpin_u/constants/tags.dart';

class VolunteerModel {
  final String id;
  final String name;
  final String email;
  final String profilePicture;
  final String bio;
  List<Tags> interests;

  VolunteerModel({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePicture,
    required this.bio,
    this.interests = const [],
  });

  VolunteerModel.empty()
      : id = '',
        name = '',
        email = '',
        profilePicture = '',
        bio = '',
        interests = [];

  VolunteerModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        profilePicture = json['profilePicture'],
        bio = json['bio'],
        interests = json['interests'].cast<Tags>();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'profilePicture': profilePicture,
        'bio': bio,
        'interests': interests.map((e) => e.toString()).toList(),
      };

  @override
  String toString() {
    return 'VolunteerModel{id: $id, name: $name, email: $email,'
        'profilePicture: $profilePicture, \nbio: $bio, \ninterests: $interests}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VolunteerModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          email == other.email &&
          profilePicture == other.profilePicture &&
          bio == other.bio &&
          interests == other.interests;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      profilePicture.hashCode ^
      bio.hashCode ^
      interests.hashCode;

  VolunteerModel copyWith({
    String? id,
    String? name,
    String? email,
    String? profilePicture,
    String? bio,
    List<Tags>? interests,
  }) {
    return VolunteerModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      profilePicture: profilePicture ?? this.profilePicture,
      bio: bio ?? this.bio,
      interests: interests ?? this.interests,
    );
  }
}
