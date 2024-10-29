// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCZQxcIh_tNho0Ec1yp7jAs65StCaK1oZY',
    appId: '1:850669297444:web:0f9ebb2cbf9399dadaddb1',
    messagingSenderId: '850669297444',
    projectId: 'epic-quiz-app',
    authDomain: 'epic-quiz-app.firebaseapp.com',
    storageBucket: 'epic-quiz-app.appspot.com',
    measurementId: 'G-L5QL4JM894',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCq9zn6z8YCGN8VQdElzduz-rvjOGXPOtM',
    appId: '1:850669297444:android:beb22d4c6069b034daddb1',
    messagingSenderId: '850669297444',
    projectId: 'epic-quiz-app',
    storageBucket: 'epic-quiz-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCtVjHGKrTJO1g2lEziLudOV26lebWuCEM',
    appId: '1:850669297444:ios:302dc7fdcb59cd74daddb1',
    messagingSenderId: '850669297444',
    projectId: 'epic-quiz-app',
    storageBucket: 'epic-quiz-app.appspot.com',
    iosBundleId: 'com.example.firebaseQuizApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCtVjHGKrTJO1g2lEziLudOV26lebWuCEM',
    appId: '1:850669297444:ios:302dc7fdcb59cd74daddb1',
    messagingSenderId: '850669297444',
    projectId: 'epic-quiz-app',
    storageBucket: 'epic-quiz-app.appspot.com',
    iosBundleId: 'com.example.firebaseQuizApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCZQxcIh_tNho0Ec1yp7jAs65StCaK1oZY',
    appId: '1:850669297444:web:eda0ae9b193f3594daddb1',
    messagingSenderId: '850669297444',
    projectId: 'epic-quiz-app',
    authDomain: 'epic-quiz-app.firebaseapp.com',
    storageBucket: 'epic-quiz-app.appspot.com',
    measurementId: 'G-P42240H4X3',
  );
}