import 'package:flutter/material.dart';
import 'package:test_pti_prabowo_adi/views/widget/atoms/icon_rounded_bg.dart';

class MenuItem extends StatelessWidget {
  final String icon;
  final String label;
  final Function? todo;

  const MenuItem({
    Key? key,
    required this.icon,
    required this.label,
    this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: todo != null ? () => todo!() : null,
      child: Container(
        // padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(16),
        //   boxShadow: [
        //     BoxShadow(
        //       color: Colors.grey.withOpacity(0.2), // Shadow color
        //       spreadRadius: 2, // Spread radius
        //       blurRadius: 5, // Blur radius
        //       offset: Offset(1, 1), // Shadow position (x, y)
        //     ),
        //   ],
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                icon,
                height: 72,
              ),
            ),
            SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}
