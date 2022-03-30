import 'package:flutter/material.dart';

import '../../App Theme/app_theme.dart';
class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [Icon(Icons.notifications,color: AppTheme.DarkPastelGreen,)],),
    );
  }
}
