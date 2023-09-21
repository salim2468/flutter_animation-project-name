import 'package:flutter/material.dart';

import '../api/notification_api.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  NotificationApi notificationApi = NotificationApi();

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

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
                  title: 'Viber',
                  body: 'New message from ABC',
                  payload: 'sarah.abs');
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
