// import 'package:app_settings/app_settings.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
//
// class NotificationServices {
//
//   FirebaseMessaging messaging = FirebaseMessaging.instance;
//
//   void requestNotificationPermission()async{
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: true,
//       badge: true,
//       carPlay: true,
//       criticalAlert: true,
//       provisional: true,
//       sound: true,
//     );
//
//     if(settings.authorizationStatus == AuthorizationStatus.authorized){
//        print('User granted Permission');
//     }else if(settings.authorizationStatus == AuthorizationStatus.authorized){
//       print('User granted provisional Permission');
//     } else {
//       AppSettings.openNotificationSettings();
//       print('User denied Permission');
//     }
//
//   }
//
//   Future<String> getDeviceToken()async{
//   String? token = await  messaging.getToken();
//     return token!;
//   }
//
//   void isTokenRefresh()async{
//     messaging.onTokenRefresh.listen((event) {
//       event.toString();
//       print('refresh');
//     });
//
//   }
//
// }

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class MyNotification{
  static  FirebaseMessaging messaging = FirebaseMessaging.instance;

  static requestPermission() async{
    NotificationSettings setting =  await messaging.requestPermission(alert: true);

  }
  static listenMessage(){
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Message data: ${message.data}');

      if(message.notification != null){
        print('Message also contained a notifaction: ${message.notification}');

        FlutterLocalNotificationsPlugin localNotificationsPlugin = FlutterLocalNotificationsPlugin();

        InitializationSettings settings = InitializationSettings(
          android: AndroidInitializationSettings(
            "@mipmap/ic_launcher",
          ),
        );
        localNotificationsPlugin.initialize(settings);
        localNotificationsPlugin.show(
            message.notification!.hashCode,
            message.notification!.title,
            message.notification!.body,
            NotificationDetails(
                android: AndroidNotificationDetails(
                    "channel_id",
                    "channel_name"
                )
            )
        );
      }
    });
  }

}