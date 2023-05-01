import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/main_page.dart';
import 'package:netflix_clone/pages/onBoarding.dart';
import 'package:netflix_clone/pages/root_app.dart';

void main()  async {
  // const bool kReleaseMode = bool.fromEnvironment('dart.vm.product');
  // FlutterError.onError = (details) {
  //   FlutterError.presentError(details);
  //   if (kReleaseMode) exit(1);
  // };
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'netflix_clone',
    // options: FirebaseOptions.currentPlatform,
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBKFVpAfLoJVOOENma1FGUpogPDhesGHaI',
      authDomain: 'netflix-clone-dbae7.firebaseapp.com',
      projectId: 'netflix-clone-dbae7',
      appId: '1:664491389242:android:fb7c1a84c93d07e438a003',
      messagingSenderId: '664491389242',
      storageBucket: 'gs://netflix-clone-dbae7.appspot.com',
    ),
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    // debugPaintSizeEnabled: true, // enable visualizing layout constraints
    // debugPaintBaselinesEnabled: true,
    home: OnBoarding(),
  )
  );
}
