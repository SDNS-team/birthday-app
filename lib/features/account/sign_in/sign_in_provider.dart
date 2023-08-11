import 'package:firebase_auth/firebase_auth.dart';

abstract class SignInProvider {
  Future<UserCredential> signIn();
}
