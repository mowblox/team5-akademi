import 'package:firebase_auth/firebase_auth.dart';

abstract class FireBaseAuthService {
  Future<UserCredential?> signUpWithEmailPassword({
    required String email,
    required String password,
    required String fullName,
  });

  Future<UserCredential?> signInWithEmailPassword({
    required String email,
    required String password,
  });

  Future<void> resetPassword(String email);

  Future<void> signOut();

  User? getCurrentUser();
}

class FireBaseAuthServiceImpl extends FireBaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<UserCredential?> signUpWithEmailPassword({
    required String email,
    required String password,
    required String fullName,
  }) async {
    final UserCredential userCredential =
        await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (userCredential.user != null) {
      await userCredential.user!.updateDisplayName(fullName);
    }
    return userCredential;
  }

  @override
  Future<UserCredential?> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    final UserCredential userCredential =
        await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential;
  }

  @override
  Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }

  @override
  User? getCurrentUser() {
    return _auth.currentUser;
  }
}
