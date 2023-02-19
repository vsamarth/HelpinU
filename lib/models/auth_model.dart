class AuthModel {
  final String id;
  final String email;
  final String password;
  final bool isVolunteer;

  AuthModel({
    required this.id,
    required this.email,
    required this.password,
    required this.isVolunteer,
  });

  AuthModel.empty()
      : id = '',
        email = '',
        password = '',
        isVolunteer = false;
  

  AuthModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        password = json['password'],
        isVolunteer = json['isVolunteer'];
  
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'password': password,
        'isVolunteer': isVolunteer,
      };
  
  @override
  String toString() {
    return 'AuthModel{id: $id, email: $email, password: $password, isVolunteer: $isVolunteer}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          email == other.email &&
          password == other.password &&
          isVolunteer == other.isVolunteer;
  

  @override
  int get hashCode =>
      id.hashCode ^ email.hashCode ^ password.hashCode ^ isVolunteer.hashCode;

  AuthModel copyWith({
    String? id,
    String? email,
    String? password,
    bool? isVolunteer,
  }) {
    return AuthModel(
      id: id ?? this.id,
      email: email ?? this.email,
      password: password ?? this.password,
      isVolunteer: isVolunteer ?? this.isVolunteer,
    );
  }


}