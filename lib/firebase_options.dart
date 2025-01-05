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
    apiKey: 'AIzaSyDCR62iZ7nqz2ITdOGrpDs_OVT5-4GaoLY',
    appId: '1:300956645973:web:0330bd77095bbaa6aa32dc',
    messagingSenderId: '300956645973',
    projectId: 'full-store-app-637dc',
    authDomain: 'full-store-app-637dc.firebaseapp.com',
    storageBucket: 'full-store-app-637dc.firebasestorage.app',
    measurementId: 'G-3YJWVEEFD5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6ZpMIQIde_EcyVSxrWzf3MC6ZO7j57y8',
    appId: '1:300956645973:android:50eb544dbc180d33aa32dc',
    messagingSenderId: '300956645973',
    projectId: 'full-store-app-637dc',
    storageBucket: 'full-store-app-637dc.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsnyOXGoV3DBUbUvjzDhteGvkW75k5R5k',
    appId: '1:300956645973:ios:d1f4eaef4d2ce9e8aa32dc',
    messagingSenderId: '300956645973',
    projectId: 'full-store-app-637dc',
    storageBucket: 'full-store-app-637dc.firebasestorage.app',
    iosBundleId: 'com.example.fullStoreApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBsnyOXGoV3DBUbUvjzDhteGvkW75k5R5k',
    appId: '1:300956645973:ios:d1f4eaef4d2ce9e8aa32dc',
    messagingSenderId: '300956645973',
    projectId: 'full-store-app-637dc',
    storageBucket: 'full-store-app-637dc.firebasestorage.app',
    iosBundleId: 'com.example.fullStoreApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDCR62iZ7nqz2ITdOGrpDs_OVT5-4GaoLY',
    appId: '1:300956645973:web:6ea59ce630e1c2baaa32dc',
    messagingSenderId: '300956645973',
    projectId: 'full-store-app-637dc',
    authDomain: 'full-store-app-637dc.firebaseapp.com',
    storageBucket: 'full-store-app-637dc.firebasestorage.app',
    measurementId: 'G-QEPG89XJKV',
  );
}