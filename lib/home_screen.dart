import 'package:flutter/material.dart';

import 'events/events_page.dart';
import 'records/records_page.dart';
import 'tickets/tickets_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;
  String appbarTitleString = "Events List";
  var appBarTitleText = const Text(
    "Events List",
    style: TextStyle(fontSize: 24),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarTitleText,
        centerTitle: true,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            if (index == 0) {
              appbarTitleString = "Events List";
              appBarTitleText = Text(
                appbarTitleString,
                style: TextStyle(fontSize: 24),
              );
            } else if (index == 1) {
              appbarTitleString = "Tickets List";
              appBarTitleText = Text(
                appbarTitleString,
                style: TextStyle(fontSize: 24),
              );
            } else if (index == 2) {
              appbarTitleString = "Records";
              appBarTitleText = Text(
                appbarTitleString,
                style: TextStyle(fontSize: 24),
              );
            }
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
            ),
            label: 'Events',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.airplane_ticket_sharp,
            ),
            label: 'Tickets',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.event,
            ),
            label: 'Records',
          ),
        ],
      ),
      body: <Widget>[
        EventsPage(),
        TicketsPage(),
        RecordsPage(),
      ][currentPageIndex],
    );
  }
}
