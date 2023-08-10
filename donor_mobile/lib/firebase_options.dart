// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDsoXxiH4BWPdzT0GcbO6Z8feRKbGnNkAU',
    appId: '1:989651970702:web:33d4749cbf88c8d37df7df',
    messagingSenderId: '989651970702',
    projectId: 'mystylist-490b7',
    authDomain: 'mystylist-490b7.firebaseapp.com',
    databaseURL: 'https://mystylist-490b7.firebaseio.com',
    storageBucket: 'mystylist-490b7.appspot.com',
    measurementId: 'G-6CT8SWPDS7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGsXMTbKjEs4rrinHsIwb3u8S6znbPZdU',
    appId: '1:989651970702:android:f67b5fb1c658fb807df7df',
    messagingSenderId: '989651970702',
    projectId: 'mystylist-490b7',
    databaseURL: 'https://mystylist-490b7.firebaseio.com',
    storageBucket: 'mystylist-490b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHeyC3FXb7DfmUgDktZpRuvkRx77k6C3Y',
    appId: '1:989651970702:ios:c5bc0bde0233d1477df7df',
    messagingSenderId: '989651970702',
    projectId: 'mystylist-490b7',
    databaseURL: 'https://mystylist-490b7.firebaseio.com',
    storageBucket: 'mystylist-490b7.appspot.com',
    androidClientId: '989651970702-37c81tq8a0rkmm25ivh4kk9ldkd4dtum.apps.googleusercontent.com',
    iosClientId: '989651970702-30v2qms50rq4ieuf1hin1tkipobs6j18.apps.googleusercontent.com',
    iosBundleId: 'com.example.donorMobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHeyC3FXb7DfmUgDktZpRuvkRx77k6C3Y',
    appId: '1:989651970702:ios:7608cd27e53c1ee67df7df',
    messagingSenderId: '989651970702',
    projectId: 'mystylist-490b7',
    databaseURL: 'https://mystylist-490b7.firebaseio.com',
    storageBucket: 'mystylist-490b7.appspot.com',
    androidClientId: '989651970702-37c81tq8a0rkmm25ivh4kk9ldkd4dtum.apps.googleusercontent.com',
    iosClientId: '989651970702-4nm3fi0u96cd83083u7ppkbq3g4g9462.apps.googleusercontent.com',
    iosBundleId: 'com.example.donorMobile.RunnerTests',
  );
}