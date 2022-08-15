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
    apiKey: 'AIzaSyA9m74rBXAWeaoGJJkoJ26fAfVDNJSKeVU',
    appId: '1:509580792755:web:dcde8cdab43615e06271c6',
    messagingSenderId: '509580792755',
    projectId: 'kana-expenses',
    authDomain: 'kana-expenses.firebaseapp.com',
    storageBucket: 'kana-expenses.appspot.com',
    measurementId: 'G-DQ63BVFFTC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCW6dVJtoZXg7zWddHsoNBbr7bvjHWxAlI',
    appId: '1:509580792755:android:632383397423fc366271c6',
    messagingSenderId: '509580792755',
    projectId: 'kana-expenses',
    storageBucket: 'kana-expenses.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDu3g6AbBedx1jaWyYd4BUO8VpCVh6c5Z8',
    appId: '1:509580792755:ios:21d386c56b46a4436271c6',
    messagingSenderId: '509580792755',
    projectId: 'kana-expenses',
    storageBucket: 'kana-expenses.appspot.com',
    iosClientId: '509580792755-ki2rvq3jba0gi97o1ngjt2qn3a2anuje.apps.googleusercontent.com',
    iosBundleId: 'mz.co.kana.kana',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDu3g6AbBedx1jaWyYd4BUO8VpCVh6c5Z8',
    appId: '1:509580792755:ios:d814ecb0c4968c806271c6',
    messagingSenderId: '509580792755',
    projectId: 'kana-expenses',
    storageBucket: 'kana-expenses.appspot.com',
    iosClientId: '509580792755-2v4biumvjai8k5qfv12d50kolvinf99s.apps.googleusercontent.com',
    iosBundleId: 'com.example.kana',
  );
}