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

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6cy0gWpxVL-rYfXapmuHbJup9Nt22SoI',
    appId: '1:326833636520:ios:d49e389a7dc09728b9ee9d',
    messagingSenderId: '326833636520',
    projectId: 'alumlink-358d0',
    databaseURL: 'https://alumlink-358d0-default-rtdb.firebaseio.com',
    storageBucket: 'alumlink-358d0.appspot.com',
    iosBundleId: 'com.example.alumlinkApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6cy0gWpxVL-rYfXapmuHbJup9Nt22SoI',
    appId: '1:326833636520:ios:d49e389a7dc09728b9ee9d',
    messagingSenderId: '326833636520',
    projectId: 'alumlink-358d0',
    databaseURL: 'https://alumlink-358d0-default-rtdb.firebaseio.com',
    storageBucket: 'alumlink-358d0.appspot.com',
    iosBundleId: 'com.example.alumlinkApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCMpt2trdRFM3mzpCczrajBGaNJEG8Y3f0',
    appId: '1:326833636520:web:fdae73cc48dc17bbb9ee9d',
    messagingSenderId: '326833636520',
    projectId: 'alumlink-358d0',
    authDomain: 'alumlink-358d0.firebaseapp.com',
    databaseURL: 'https://alumlink-358d0-default-rtdb.firebaseio.com',
    storageBucket: 'alumlink-358d0.appspot.com',
    measurementId: 'G-HKKP20F0Z2',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCMpt2trdRFM3mzpCczrajBGaNJEG8Y3f0',
    appId: '1:326833636520:web:30d5c50e281a761bb9ee9d',
    messagingSenderId: '326833636520',
    projectId: 'alumlink-358d0',
    authDomain: 'alumlink-358d0.firebaseapp.com',
    databaseURL: 'https://alumlink-358d0-default-rtdb.firebaseio.com',
    storageBucket: 'alumlink-358d0.appspot.com',
    measurementId: 'G-BS6E2GYHGE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBROIqszGD69GuE5TJTSkr2YY9q4UpXQls',
    appId: '1:326833636520:android:779aea2928ea86a7b9ee9d',
    messagingSenderId: '326833636520',
    projectId: 'alumlink-358d0',
    databaseURL: 'https://alumlink-358d0-default-rtdb.firebaseio.com',
    storageBucket: 'alumlink-358d0.appspot.com',
  );

}