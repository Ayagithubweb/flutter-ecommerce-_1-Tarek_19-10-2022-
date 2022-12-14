// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core_web/firebase_core_web.dart';


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
    apiKey: 'AIzaSyA_BMqNSqrWhdr-oeB1PswLIHb-iY4GL6w',
    appId: '1:767681858314:web:b6ced607c07149c8da88f3',
    messagingSenderId: '767681858314',
    projectId: 'ecommerce-flutter-tarak',
    authDomain: 'ecommerce-flutter-tarak.firebaseapp.com',
    storageBucket: 'ecommerce-flutter-tarak.appspot.com',
    measurementId: 'G-XJHD1S5QY2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDfZjXcGFlrJsQ2Li30o9dgpywczJ3mDvg',
    appId: '1:767681858314:android:9ef43404f51e42b9da88f3',
    messagingSenderId: '767681858314',
    projectId: 'ecommerce-flutter-tarak',
    storageBucket: 'ecommerce-flutter-tarak.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAapHssZJ8DoqMVk-Pbmjlkev-WFjPElC0',
    appId: '1:767681858314:ios:91c7bc24d8df7f6fda88f3',
    messagingSenderId: '767681858314',
    projectId: 'ecommerce-flutter-tarak',
    storageBucket: 'ecommerce-flutter-tarak.appspot.com',
    iosClientId: '767681858314-ndc1b13kdi98kjffcd66sa2o5lmk85dh.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerce2023',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAapHssZJ8DoqMVk-Pbmjlkev-WFjPElC0',
    appId: '1:767681858314:ios:91c7bc24d8df7f6fda88f3',
    messagingSenderId: '767681858314',
    projectId: 'ecommerce-flutter-tarak',
    storageBucket: 'ecommerce-flutter-tarak.appspot.com',
    iosClientId: '767681858314-ndc1b13kdi98kjffcd66sa2o5lmk85dh.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerce2023',
  );
}
