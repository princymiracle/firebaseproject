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
    apiKey: 'AIzaSyCPPI4cDguTLDlcJP-AyIx5FalrEnyaY9Q',
    appId: '1:136232367393:web:0a9fe259ad76669b9dba60',
    messagingSenderId: '136232367393',
    projectId: 'fir-93aee',
    authDomain: 'fir-93aee.firebaseapp.com',
    storageBucket: 'fir-93aee.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCmm0-WeXg1xuvBlC3aGqOYsPQWHoIpKQ',
    appId: '1:136232367393:android:edd8f08e58fba6e99dba60',
    messagingSenderId: '136232367393',
    projectId: 'fir-93aee',
    storageBucket: 'fir-93aee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB23vzlt3U4isztuUueyaA_qncpxloaRqM',
    appId: '1:136232367393:ios:f45e4475f75069ff9dba60',
    messagingSenderId: '136232367393',
    projectId: 'fir-93aee',
    storageBucket: 'fir-93aee.appspot.com',
    iosBundleId: 'com.example.firebaseproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB23vzlt3U4isztuUueyaA_qncpxloaRqM',
    appId: '1:136232367393:ios:669ae28b068c346d9dba60',
    messagingSenderId: '136232367393',
    projectId: 'fir-93aee',
    storageBucket: 'fir-93aee.appspot.com',
    iosBundleId: 'com.example.firebaseproject.RunnerTests',
  );
}
