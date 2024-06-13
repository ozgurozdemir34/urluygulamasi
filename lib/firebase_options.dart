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
    apiKey: 'AIzaSyDQp7xPWMuwp2fdaVtrXo6gvpDnLKIswkQ',
    appId: '1:662005445688:web:ab98220cabff83be4322cd',
    messagingSenderId: '662005445688',
    projectId: 'urluygulama-dfb7e',
    authDomain: 'urluygulama-dfb7e.firebaseapp.com',
    storageBucket: 'urluygulama-dfb7e.appspot.com',
    measurementId: 'G-D0542KRHRS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDLVBDNjUUfldNBe6BGIUSjPHJwC56d8V0',
    appId: '1:662005445688:android:0498c8ab5195a4534322cd',
    messagingSenderId: '662005445688',
    projectId: 'urluygulama-dfb7e',
    storageBucket: 'urluygulama-dfb7e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLDWXH_gSxnL5sc8faaBmQVHWI1KxQf0o',
    appId: '1:662005445688:ios:c807a7642ac919634322cd',
    messagingSenderId: '662005445688',
    projectId: 'urluygulama-dfb7e',
    storageBucket: 'urluygulama-dfb7e.appspot.com',
    iosBundleId: 'com.example.urluygulamasi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDLDWXH_gSxnL5sc8faaBmQVHWI1KxQf0o',
    appId: '1:662005445688:ios:c807a7642ac919634322cd',
    messagingSenderId: '662005445688',
    projectId: 'urluygulama-dfb7e',
    storageBucket: 'urluygulama-dfb7e.appspot.com',
    iosBundleId: 'com.example.urluygulamasi',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDQp7xPWMuwp2fdaVtrXo6gvpDnLKIswkQ',
    appId: '1:662005445688:web:d2871d03681fb0184322cd',
    messagingSenderId: '662005445688',
    projectId: 'urluygulama-dfb7e',
    authDomain: 'urluygulama-dfb7e.firebaseapp.com',
    storageBucket: 'urluygulama-dfb7e.appspot.com',
    measurementId: 'G-SY2B6EEG1F',
  );
}
