import 'package:flutter/material.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: primaryColor,
            centerTitle: true,
            elevation: 0,
            title: Text("RESULT"),
          ),
          body: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Score:',
                        style: TextStyle(
                          color: contentColorDarkTheme,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  children: List.generate(20, (index) {
                    return Center(
                      child: FlatButton(
                        onPressed: () {},
                        color: Colors.grey,
                        child: Text(
                          '${index + 1}',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Go to Home"),
                ),
              )
            ],
          )),
    );
  }
}
