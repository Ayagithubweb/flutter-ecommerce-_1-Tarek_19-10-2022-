// ignore: depend_on_referenced_packages
import 'package:firebase_auth/firebase_auth.dart';

// abstract class AuthBase {
//   Future<User?> loginWithEmailAndPassword(String email, String password);
//   Future<User?> signUpWithEmailAndPassword(String email, String password);
//   Future<void> logout();

//   User? get currentUser;
//   Stream authStateChanes();
// }

class Auth  { // implements AuthBase
Auth._();

  static final instance = Auth._();
  final _firebaseAuth = FirebaseAuth.instance;

  Future<User?> loginWithEmailAndPassword(String email, String password) async {
    final userAuth = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return userAuth.user;
  }

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    final userAuth = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userAuth.user;
  }

  Stream authStateChanes() => _firebaseAuth
      .authStateChanges(); // know what state of user....??-> Notifies about changes to the user's sign-in state (such as sign-in or sign-out).

  User? get currentUser => _firebaseAuth.currentUser;

  Future<void> logout() async => await _firebaseAuth.signOut();
}
