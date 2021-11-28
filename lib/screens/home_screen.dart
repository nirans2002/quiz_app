import 'package:flutter/material.dart';
import 'package:quiz_app/services/api.dart';
import 'package:quiz_app/theme/theme.dart';
// import 'package:quiz_app/components/bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    showBottomSheet(context);
    // apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: secondaryColor,
              width: 300,
              child: Text("data"),
            ),
            const Center(
                child: ElevatedButton(
              onPressed: apicall,
              child: Text("apicall"),
            ))
          ],
        ),
      ),
    );
  }
}

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
