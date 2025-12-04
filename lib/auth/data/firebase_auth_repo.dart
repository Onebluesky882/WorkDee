/* 
firebase is our backend
 */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_projects/auth/domain/entities/app_user.dart';
import 'package:flutter_projects/auth/domain/repos/auth_repo.dart';

class FirebaseAuthRepo implements AuthRepo {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // login
  @override
  Future<AppUser?> loginWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      AppUser user = AppUser(uid: userCredential.user!.uid, email: email);

      return user;
    } catch (e) {
      throw Exception('login failed $e');
    }
  }

  // register
  @override
  Future<AppUser?> registerWithEmailPassword(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      AppUser user = AppUser(uid: userCredential.user!.uid, email: email);
      return user;
    } catch (e) {
      throw Exception('register failed $e');
    }
  }

  // logout
  @override
  Future<AppUser?> logout() async {
    await firebaseAuth.signOut();
    return null;
  }

  // current user
  @override
  Future<AppUser?> getCurrentUser() async {
    try {
      final user = firebaseAuth.currentUser;

      // if user == null
      if (user == null) return null;
      return AppUser(uid: user.uid, email: user.email ?? '');
    } catch (e) {
      throw Exception('user current failed $e');
    }
  }

  // delete user
  @override
  Future<void> deleteAccount() async {
    try {
      final user = firebaseAuth.currentUser;
      if (user != null) {
        await user.delete();
        await logout();
      } else {
        throw Exception('No user login..');
      }
    } catch (e) {
      throw Exception(' delete user failed $e');
    }
  }

  // send password
  @override
  Future<String> sendPasswordResetEmail(String email) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      return 'Password reset email check your inbox';
    } catch (e) {
      return 'An error $e';
    }
  }
}
