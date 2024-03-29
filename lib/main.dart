// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:firebaseproject/Authentication/Login.dart';
// import 'package:firebaseproject/Authentication/loginwithgoogle/loginwithgoogle.dart';
// import 'package:firebaseproject/Notifications/Home_Screen.dart';
// import 'package:firebaseproject/Notifications/Notification_Servies.dart';
// import 'package:firebaseproject/firebase_options.dart';
// import 'package:firebaseproject/ui/splashscreen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
//
//
// @pragma('vm:entry-point')
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   await Firebase.initializeApp();
//
//   print("Handling a background message: ${message.messageId}");
// }
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform
//   );
//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   runApp(const MyApp());
// }
//
//
// // getToken() async{
// //   String? token = await MyNotification.messaging.getToken();
// //   print("token ${token}");
// // }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//
//   void initState() {
//     MyNotification.requestPermission();
//     MyNotification.listenMessage();
//     getToken();
//     super.initState();
//   }
//   getToken() async{
//     String? token = await MyNotification.messaging.getToken();
//     print("token ${token}");
//   }
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: PhoneHome(),
//     );
//   }
// }
//

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebaseproject/Authentication/Login.dart';
import 'package:firebaseproject/Authentication/loginwithgoogle/loginwithgoogle.dart';
import 'package:firebaseproject/Notifications/Notification_Servies.dart';
import 'package:firebaseproject/UI.dart';
import 'package:firebaseproject/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    MyNotification.requestPermission();
    MyNotification.listenMessage();
    getToken();
    super.initState();
  }
  getToken() async{
    String? token = await MyNotification.messaging.getToken();
    print("token ${token}");
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  PhoneHome(),
    );
  }
}

