import 'package:flutter/foundation.dart';

import 'auth.dart';
import 'user.dart';
import 'value_objects.dart';

abstract class AuthFacade {
  Future<User> getSignedInUser();

  Stream<User> get onAuthStateChanged;

  Future<Auth> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Auth> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Auth> signInWithGoogle();
  Future<Auth> signInAnonymously();
  Future<void> signOut();
}
