import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shelf_stream/models/notification_type.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List<NotificationType> notifications = [
    NotificationType(
      notifType: 'reminder',
      notifTitle: 'Book return',
      notifDetails:
          'This is a reminder for you to return the book you borrowed',
    ),
    NotificationType(
      notifType: 'request',
      notifTitle: 'Borrow request',
      notifDetails: 'Someone would like to borrow your book',
    ),
    NotificationType(
      notifType: 'info',
      notifTitle: 'Attention',
      notifDetails: 'This needs your attention',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
            fontFamily: 'Monolog',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          var notificationType = notifications[index];
          return Card(
            color: Colors.white54,
            margin: EdgeInsets.only(top: 0),
            elevation: 0,
            shape: Border(
              bottom: BorderSide(color: Colors.grey.shade200),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black12,
                  child: notificationType.notifType == 'reminder'
                      ? FaIcon(FontAwesomeIcons.exclamation,
                          color: Colors.red, size: 20.0)
                      : notificationType.notifType == 'request'
                          ? FaIcon(FontAwesomeIcons.info,
                              color: Colors.blue, size: 20.0)
                          : FaIcon(FontAwesomeIcons.question,
                              color: Colors.grey, size: 20.0), // Default icon
                ),
                title: Text(
                  notificationType.notifTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(notificationType.notifDetails),
                trailing: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  size: 20,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
