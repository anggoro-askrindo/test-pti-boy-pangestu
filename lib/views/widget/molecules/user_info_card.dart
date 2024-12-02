import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  final String name;
  final String role;
  final String avatarPath;
  final bool showImage;

  const UserInfoCard({
    Key? key,
    required this.name,
    required this.role,
    required this.avatarPath,
    this.showImage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        (showImage)
            ? CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(avatarPath), // Replace with user image
              )
            : SizedBox.shrink(),
        (showImage) ? SizedBox(width: 10) : SizedBox.shrink(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              role,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
