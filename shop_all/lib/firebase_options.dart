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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCuytLmYfKI-TamwSYGJXnym0bYR27l-fA',
    appId: '1:173760311905:web:65d77dde8ded53b0ff3020',
    messagingSenderId: '173760311905',
    projectId: 'marach-e-commerce-app',
    authDomain: 'marach-e-commerce-app.firebaseapp.com',
    storageBucket: 'marach-e-commerce-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvb05ZbWq_NkLlSggr9luIfPymdOgPecQ',
    appId: '1:173760311905:android:ceaf5a3b157d3da2ff3020',
    messagingSenderId: '173760311905',
    projectId: 'marach-e-commerce-app',
    storageBucket: 'marach-e-commerce-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZqBjUWtlUsemqcjTUPnwrnhInnyaNYw0',
    appId: '1:173760311905:ios:6221d5ffbb64e4d2ff3020',
    messagingSenderId: '173760311905',
    projectId: 'marach-e-commerce-app',
    storageBucket: 'marach-e-commerce-app.appspot.com',
    androidClientId: '173760311905-lcm4urtlrm0jo96tvtbvnnp20ipnpsqf.apps.googleusercontent.com',
    iosClientId: '173760311905-4bebp6nq4no306iaftrt6t7lbb7plhfo.apps.googleusercontent.com',
    iosBundleId: 'com.example.shopAll',
  );
}
