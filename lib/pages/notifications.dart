import 'package:flutter/material.dart';

class NotificationsState extends StatefulWidget {
  const NotificationsState({super.key});
  @override
  NotificationsPage createState() => NotificationsPage();
}

class NotificationsPage extends State<NotificationsState> {
  List<Notification> _notifications = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("jopa"), //_notifications[index].title
            subtitle: Text("jopa"), //_notifications[index].body
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.pushNamed(context, 
'/notification/14'); //${_notifications[index].id}
              },
            ),
          );
        },
      ),
    );
  }
}
