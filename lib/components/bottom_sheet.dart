import 'package:flutter/material.dart';

Future<void> showBottomSheet(BuildContext context) async {
  return showModalBottomSheet(
    context: context,
    builder: (context1) {
      return Container(
        color: Colors.green,
        height: 200,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Option 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Option 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}
