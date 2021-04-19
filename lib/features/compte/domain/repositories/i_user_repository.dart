import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  FirebaseAuth firebaseAuth;

  UserRepository() {
    this.firebaseAuth = FirebaseAuth.instance;
  }

  Future<User> signInUser(String email, String password) async {
    var result = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);

    return result.user;
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  bool isSignIn() {
    return firebaseAuth.currentUser != null;
  }

  User getCurrentUser() {
    return firebaseAuth.currentUser;
  }
}
