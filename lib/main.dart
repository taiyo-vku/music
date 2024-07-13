import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:spotify/firebase_options.dart';
import 'package:spotify/spotify.dart';
import 'package:spotify/utils/services/connection.dart';

Future<void> main() async {
  // TODO :Bingding
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // TODO : Await Native Splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Check Connection Internet
  initNoInternetListerner();
  // TODO : Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
     // .then((FirebaseApp value) => Get.put(AuthRepository()));

  // TODO : Notification
  //Controller().sendNotification();

  // TODO : Run App
  runApp(const Spotify());
}
