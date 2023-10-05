import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMsg {
  final _firebaseMessagin = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await _firebaseMessagin.requestPermission();

    final fcmToken = await _firebaseMessagin.getToken();
    print('Tokem: $fcmToken');
  }
}
