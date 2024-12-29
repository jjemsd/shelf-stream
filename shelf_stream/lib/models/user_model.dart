class User {
  final int? id;
  final String firstName;
  final String lastName;
  final String email;
  final String username;
  final String password;
  String? bio; // Remove final to allow updates
  String? profilePicture; // Remove final to allow updates

  User({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.username,
    required this.password,
    this.bio,
    this.profilePicture,
  });

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'username': username,
      'password': password,
      'bio': bio,
      'profilePicture': profilePicture,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      email: map['email'],
      username: map['username'],
      password: map['password'],
      bio: map['bio'],
      profilePicture: map['profilePicture'],
);}
}