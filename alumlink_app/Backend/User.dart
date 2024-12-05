class User {
  String uid;
  String name;
  String email;
  String linkedDetails;
  List<String> fieldsOfInterest;

  User({
    required this.uid,
    required this.name,
    required this.email,
    required this.linkedDetails,
    required this.fieldsOfInterest,
  });

  factory User.fromMap(Map<String, dynamic> data, String documentId) {
    return User(
      uid: documentId,
      name: data['name'] ?? '',
      email: data['email'] ?? '',
      linkedDetails: data['linkedDetails'] ?? '',
      fieldsOfInterest: List<String>.from(data['fieldsOfInterest'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'linkedDetails': linkedDetails,
      'fieldsOfInterest': fieldsOfInterest,
    };
  }
}
