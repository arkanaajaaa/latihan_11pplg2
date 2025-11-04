import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class Notificationcontroller extends GetxController {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  var lastMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    _initFCM();
  }

  void _initFCM() async {
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    print('user granted permission: ${settings.authorizationStatus}');

    String? token = await _messaging.getToken();
    print('FCM Token: $token');

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message foreground : ${message.notification?.title}');
      lastMessage.value =
          "${message.notification?.title ?? ""}\n${message.notification?.body ?? ""}";

      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        print('Message Clicked!');
        lastMessage.value =
            'Opened: ${message.notification?.title ?? ""}\n${message.notification?.body ?? ""}';
      });
    });
  }
}
