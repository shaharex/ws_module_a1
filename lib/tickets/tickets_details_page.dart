import 'package:flutter/material.dart';

class TicketDetailsPage extends StatefulWidget {
  const TicketDetailsPage({super.key});

  @override
  State<TicketDetailsPage> createState() => _TicketDetailsPageState();
}

class _TicketDetailsPageState extends State<TicketDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket Details'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 280,
              height: 450,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 280,
                    height: 150,
                    color: const Color.fromARGB(255, 230, 230, 230),
                    child: const Text(
                      'Ticket Picture',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ticket type: xxxxx',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Audience name: xxxxxx',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Time: xxxx-xx-xx xx:xx',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Seat: Somewhere',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 280,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
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
                  'Download',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
