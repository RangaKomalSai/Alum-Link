import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String eventName;
  final String eventDate;
  final VoidCallback onTap;

  EventCard(this.eventName, this.eventDate, {required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: ListTile(
          title: Text(eventName),
          subtitle: Text(eventDate),
          trailing: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
