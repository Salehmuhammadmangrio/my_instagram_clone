import 'package:firebase_auth/firebase_auth.dart';

import 'authentication_api.dart';

class AuthenticationService implements AuthenticationApi{

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Future<String> createUserWithEmailAndPassword({String email, String password}) async {
    FirebaseUser user = await _firebaseAuth.createUserWithEmailAndPassword(email:
    email, password: password);
    return user.uid;
  }


  @override
  Future<String> currentUserUid() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user.uid;
  }

  @override
  FirebaseAuth getFirebaseAuth() {
    return _firebaseAuth;
  }

  @override
  Future<bool> isEmailVerified() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user.isEmailVerified;
  }

  @override
  Future<void> sendEmailVerification() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    user.sendEmailVerification();
  }

  @override
  Future<String> signInWithEmailAndPassword({String email, String password}) async {
    FirebaseUser user = await _firebaseAuth.signInWithEmailAndPassword(email: email,
        password: password);
    return user.uid;
  }


  @override
  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }


}