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
    apiKey: 'AIzaSyB-enB_4GZzhNXqd-zXblE2UxH2XEHRvSg',
    appId: '1:258512869010:web:6321cb50e9510a9568b84b',
    messagingSenderId: '258512869010',
    projectId: 'random-flutter-firebase',
    authDomain: 'random-flutter-firebase.firebaseapp.com',
    storageBucket: 'random-flutter-firebase.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhzcCpjvOJZfO4slw26YhUOGmsHvMWq-g',
    appId: '1:258512869010:android:bca68dd8a68c22e968b84b',
    messagingSenderId: '258512869010',
    projectId: 'random-flutter-firebase',
    storageBucket: 'random-flutter-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJAZnqpNlZHIFWIU36gr8VYSclFaWi5h4',
    appId: '1:258512869010:ios:ac59c6746e2f488668b84b',
    messagingSenderId: '258512869010',
    projectId: 'random-flutter-firebase',
    storageBucket: 'random-flutter-firebase.appspot.com',
    iosBundleId: 'com.example.random',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCJAZnqpNlZHIFWIU36gr8VYSclFaWi5h4',
    appId: '1:258512869010:ios:ac59c6746e2f488668b84b',
    messagingSenderId: '258512869010',
    projectId: 'random-flutter-firebase',
    storageBucket: 'random-flutter-firebase.appspot.com',
    iosBundleId: 'com.example.random',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB-enB_4GZzhNXqd-zXblE2UxH2XEHRvSg',
    appId: '1:258512869010:web:dfd2437e665a5e3868b84b',
    messagingSenderId: '258512869010',
    projectId: 'random-flutter-firebase',
    authDomain: 'random-flutter-firebase.firebaseapp.com',
    storageBucket: 'random-flutter-firebase.appspot.com',
  );

}