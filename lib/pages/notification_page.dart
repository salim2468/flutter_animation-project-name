import 'package:flutter/material.dart';

import '../api/notification_api.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});
  NotificationApi notificationApi = NotificationApi();

  void simpleNotification() {
    notificationApi.showNotification(
        title: 'Viber', body: 'New message from ABC', payload: 'sarah.abs');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              NotificationApi().showNotification(
                  title: 'Viber', body: 'New message from ABC');
            },
            child: const Text('Simple Notification'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Scheduled Notification'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Remove Notification'),
          ),
        ],
      ),
    );
  }
}
