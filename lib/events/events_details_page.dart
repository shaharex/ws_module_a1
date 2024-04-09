import 'package:flutter/material.dart';
import 'package:flutter_application_2/events/events_detailed_page.dart';

class EventsDetails extends StatelessWidget {
  const EventsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Events Details'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Title',
                style: TextStyle(fontSize: 24.0),
              ),
              const Text(
                'view counts',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.grey,
                    child: IconButton(
                      icon: Icon(null),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext builder) =>
                                    EventsDetailed()));
                      },
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.grey,
                    child: IconButton(
                      icon: Icon(null),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext builder) =>
                                    EventsDetailed()));
                      },
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.grey,
                    child: IconButton(
                      icon: Icon(null),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext builder) =>
                                    EventsDetailed()));
                      },
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Text(
                  'Text',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
