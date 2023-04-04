import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime _dateTime = DateTime.now();
  String _timeZone = 'WIB';
  String _timeZoneOffset = '+7';

  void _setTimeZone(String timeZone, String timeZoneOffset) {
    setState(() {
      _timeZone = timeZone;
      _timeZoneOffset = timeZoneOffset;
    });
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
  }

  void _getCurrentTime() {
    setState(() {
      _dateTime = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalender'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              DateFormat('EEEE, d MMMM y').format(_dateTime),
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: Text(
              DateFormat('HH:mm:ss').format(_dateTime),
              style: TextStyle(fontSize: 48),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _setTimeZone('WIB', '+7'),
                child: Text('WIB'),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () => _setTimeZone('WITA', '+8'),
                child: Text('WITA'),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () => _setTimeZone('WIT', '+9'),
                child: Text('WIT'),
              ),
            ],
          ),
          SizedBox(height: 8),
          Center(
            child: Text(
              '$_timeZone (GMT $_timeZoneOffset)',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}