class OrganizationModel {
  final String id;
  final String name;
  final String description;
  final String logo;
  final String email;
  List<String> tags;
  List<String> applications;

  OrganizationModel({
    required this.id,
    required this.name,
    required this.description,
    required this.logo,
    required this.email,
    this.tags = const [],
    this.applications = const [],
  });

  OrganizationModel.empty()
      : id = '',
        name = '',
        description = '',
        logo = '',
        email = '',
        tags = [],
        applications = [];

  OrganizationModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        description = json['description'],
        logo = json['logo'],
        email = json['email'],
        tags = json['tags'].cast<String>(),
        applications = json['applications'].cast<String>();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'logo': logo,
        'email': email,
        'tags': tags,
        'applications': applications,
      };

  @override
  String toString() {
    return 'OrganizationModel{id: $id, name: $name, \ndescription: $description,'
        '\nlogo: $logo, email: $email, \ntags: $tags, \napplications: $applications}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrganizationModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          logo == other.logo &&
          email == other.email &&
          tags == other.tags &&
          applications == other.applications;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      logo.hashCode ^
      email.hashCode ^
      tags.hashCode ^
      applications.hashCode;

  OrganizationModel copyWith({
    String? id,
    String? name,
    String? description,
    String? logo,
    String? email,
    List<String>? tags,
    List<String>? applications,
  }) {
    return OrganizationModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      logo: logo ?? this.logo,
      email: email ?? this.email,
      tags: tags ?? this.tags,
      applications: applications ?? this.applications,
    );
  }
}
