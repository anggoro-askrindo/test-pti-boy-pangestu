import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final String message;

  const NotificationTile({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message),
          Divider(color: Colors.grey[300]),
        ],
      ),
    );
  }
}
