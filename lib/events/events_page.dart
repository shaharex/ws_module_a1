import 'package:flutter/material.dart';
import 'package:flutter_application_2/events/events_details_page.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'All',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                const Text(
                  '/',
                  style: TextStyle(fontSize: 20),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Unread',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                const Text(
                  '/',
                  style: TextStyle(fontSize: 20),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Read',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 227, 227, 227),
                            border: Border.all(
                                width: 0.7,
                                color: Colors.black,
                                style: BorderStyle.solid)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((BuildContext context) =>
                                    EventsDetails())));
                      },
                      title: const Column(
                        children: [
                          Text(
                            'Title',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('Text')
                        ],
                      ),
                      subtitle: const Text(
                        'Unread',
                        style: TextStyle(fontSize: 18),
                      )),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 10),
            ),
          ],
        ));
  }
}
