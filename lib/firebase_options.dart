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
    apiKey: 'AIzaSyBNRootqpKmGNmgtw4HbYotbMnc9WWLiaA',
    appId: '1:432374872432:web:380e60a6cd3e95acf9b7b5',
    messagingSenderId: '432374872432',
    projectId: 'chatty-8ee2b',
    authDomain: 'chatty-8ee2b.firebaseapp.com',
    storageBucket: 'chatty-8ee2b.appspot.com',
    measurementId: 'G-5NEERYZY86',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9b7CaWOY7TIJUz9nNK03r9u-fc1kxd-4',
    appId: '1:432374872432:android:d44c49f03c368e48f9b7b5',
    messagingSenderId: '432374872432',
    projectId: 'chatty-8ee2b',
    storageBucket: 'chatty-8ee2b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBviWTkf4ncnwL4RwcB_slziTTk11iE740',
    appId: '1:432374872432:ios:3ecace42bc671131f9b7b5',
    messagingSenderId: '432374872432',
    projectId: 'chatty-8ee2b',
    storageBucket: 'chatty-8ee2b.appspot.com',
    androidClientId: '432374872432-01ef7kephlg6ovr7u89vj3o8esl3kpp1.apps.googleusercontent.com',
    iosClientId: '432374872432-vfk96hem7bklctj6b5jfnk19srslu96t.apps.googleusercontent.com',
    iosBundleId: 'com.abid.chattyChat01',
  );
}
