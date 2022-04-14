// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVeZXJdTnUQuUBCfVMmOGgwTN7Q0ZyYBA',
    appId: '1:981910586895:android:27446fe3f1507f1c23457a',
    messagingSenderId: '981910586895',
    projectId: 'maqsafy-app',
    storageBucket: 'maqsafy-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC5s6F8yNOMqd4mqEIQsaFl5qUgdV081MQ',
    appId: '1:981910586895:ios:5b3b2db78fbf8c2a23457a',
    messagingSenderId: '981910586895',
    projectId: 'maqsafy-app',
    storageBucket: 'maqsafy-app.appspot.com',
    iosClientId: '981910586895-ab136d5hfhs6ogd6gc28jvm66r4t6kgb.apps.googleusercontent.com',
    iosBundleId: 'com.meyo.maqsafy',
  );
}