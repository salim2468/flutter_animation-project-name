import 'package:flutter/material.dart';

import '../api/notification_api.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

DateTime scheduleTime = DateTime.now();

class _NotificationPageState extends State<NotificationPage> {
  NotificationApi notificationApi = NotificationApi();

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
                body: 'You have New message from ABC',
                payload: 'sarah.abs',
              );
            },
            child: const Text('Simple Notification'),
          ),
          ElevatedButton(
            onPressed: () async {
              final selectedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );

              if (selectedTime != null) {
                // Convert the selected time to a DateTime
                final now = DateTime.now();
                scheduleTime = DateTime(
                  now.year,
                  now.month,
                  now.day,
                  selectedTime.hour,
                  selectedTime.minute,
                );
              }
            },
            child: const Text('Remove Notification'),
          ),
          ElevatedButton(
            onPressed: () {
              NotificationApi().showScheduledNotification(
                  title: 'Whats App',
                  body: 'You have New message from ABC',
                  payload: 'sarah.abs',
                  scheduledDateAndTime: scheduleTime);

              final snackBar =
                  SnackBar(content: Text('Scheduled after 5 seconds'));
              ScaffoldMessenger.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(snackBar);
              print(scheduleTime);
            },
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
