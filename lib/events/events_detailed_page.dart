import 'package:flutter/material.dart';

class EventsDetailed extends StatelessWidget {
  const EventsDetailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Events Detailed'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.grey),
                  child: const Text(
                    'PIC',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Text',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
