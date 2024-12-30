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
    ),
  ];

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 209, 238, 107);
    const textColor = Color.fromARGB(255, 32, 58, 98);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontFamily: 'Monolog',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          var notificationType = notifications[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.black12,
                  child: notificationType.notifType == 'reminder'
                      ? FaIcon(
                          FontAwesomeIcons.exclamation,
                          color: Colors.red,
                          size: 22.0,
                        )
                      : notificationType.notifType == 'request'
                          ? FaIcon(
                              FontAwesomeIcons.info,
                              color: Colors.blue,
                              size: 22.0,
                            )
                          : FaIcon(
                              FontAwesomeIcons.question,
                              color: Colors.grey,
                              size: 22.0,
                            ), 
                ),
                title: Text(
                  notificationType.notifTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: textColor,
                  ),
                ),
                subtitle: Text(
                  notificationType.notifDetails,
                  style: TextStyle(
                    fontSize: 14,
                    color: textColor,
                  ),
                ),
                trailing: const FaIcon(
                  FontAwesomeIcons.chevronRight,
                  size: 20,
                  color: textColor,
                ),
                onTap: () {
                  
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
