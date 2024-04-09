import 'package:flutter/material.dart';

import 'tickets_create_page.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({super.key});

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((BuildContext context) =>
                                TicketsCreatePage())));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 253, 250, 219),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(
                          color: Colors.black,
                          width: 0.5,
                          style: BorderStyle.solid),
                    ),
                  ),
                  child: const Text(
                    'Create a new ticket',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, int index) {
                    return Column(
                      children: [
                        const Text(
                          'Opening Ceremony Tickets',
                          style: TextStyle(fontSize: 20),
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, int index) {
                            return const ListTile(
                              title: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Jack',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              tileColor: Color.fromARGB(255, 230, 230, 230),
                              contentPadding: EdgeInsets.only(
                                  left: 3, top: 1, bottom: 1, right: 3),
                              subtitle: Align(
                                alignment: Alignment.bottomRight,
                                child: Text('A6 Row7 Column9'),
                              ),
                            );
                          },
                          separatorBuilder: (context, int index) {
                            return const SizedBox(
                              height: 5,
                            );
                          },
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, int index) {
                    return const SizedBox(
                      height: 40,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
