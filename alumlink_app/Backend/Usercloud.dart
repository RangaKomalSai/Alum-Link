import 'package:cloud_firestore/cloud_firestore.dart';
import 'User.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');

  Future<void> updateUserDetails(User user) async {
    return await userCollection.doc(uid).set(user.toMap());
  }

  User _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return User.fromMap(snapshot.data() as Map<String, dynamic>, snapshot.id);
  }

  Stream<User> get userData {
    return userCollection.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
}
