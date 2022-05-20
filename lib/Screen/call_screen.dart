import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  @override
  _Callscreenstate createState() => _Callscreenstate();
}

class _Callscreenstate extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          callCard("Dev Stack", Icons.call_made, Colors.red, "July 18, 18:35"),
          callCard("Batram", Icons.call_missed, Colors.green, "July 19, 18:35"),
          callCard(
              "Kishor", Icons.call_received, Colors.green, "July 20, 18:35"),
          callCard("Dev Stack", Icons.call_made, Colors.red, "July 18, 18:35"),
          callCard("Batram", Icons.call_missed, Colors.green, "July 19, 18:35"),
          callCard(
              "Kishor", Icons.call_received, Colors.green, "July 20, 18:35"),
          callCard("Dev Stack", Icons.call_made, Colors.red, "July 18, 18:35"),
          callCard("Batram", Icons.call_missed, Colors.green, "July 19, 18:35"),
          callCard(
              "Kishor", Icons.call_received, Colors.green, "July 20, 18:35"),
          callCard("Dev Stack", Icons.call_made, Colors.red, "July 18, 18:35"),
          callCard("Batram", Icons.call_missed, Colors.green, "July 19, 18:35"),
          callCard(
              "Kishor", Icons.call_received, Colors.green, "July 20, 18:35"),
        ],
      ),
    );
  }
}

Widget callCard(String name, IconData iconData, Color iconColor, String time) {
  return Card(
    margin: EdgeInsets.only(bottom: 0.5),
    child: ListTile(
      leading: CircleAvatar(
        radius: 26,
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Row(
        children: [
          Icon(
            iconData,
            color: iconColor,
            size: 20,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            time,
            style: TextStyle(fontSize: 12.8),
          ),
        ],
      ),
      trailing: Icon(
        Icons.call,
        size: 28,
        color: Colors.teal,
      ),
    ),
  );
}
