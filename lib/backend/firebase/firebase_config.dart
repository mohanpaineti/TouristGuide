import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCayVNXunZtodL1clFEi2iLBN5dI8aJa8M",
            authDomain: "touristguide-f8fd6.firebaseapp.com",
            projectId: "touristguide-f8fd6",
            storageBucket: "touristguide-f8fd6.appspot.com",
            messagingSenderId: "894739687404",
            appId: "1:894739687404:web:4793ab524400df1d4e82c9"));
  } else {
    await Firebase.initializeApp();
  }
}
