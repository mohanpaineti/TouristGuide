import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TouristGuideFirebaseUser {
  TouristGuideFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TouristGuideFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TouristGuideFirebaseUser> touristGuideFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TouristGuideFirebaseUser>(
      (user) {
        currentUser = TouristGuideFirebaseUser(user);
        return currentUser!;
      },
    );
