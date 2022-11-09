// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class SingInWithEmail extends ChangeNotifier {
  Future singin(emailAddress, password) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress.text.trim(),
      password: password.text.trim(),
    );

    notifyListeners();
  }
}
