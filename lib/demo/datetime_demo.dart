import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectDateTime = new DateTime.now();
  TimeOfDay selectedTime = new TimeOfDay(hour: 10, minute: 15);

  _selectDate() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: selectDateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (date == null) return;
    setState(() {
      selectDateTime = date;
    });
  }

  _selectTime() async {
    TimeOfDay time =
        await showTimePicker(context: context, initialTime: selectedTime);
    if (time == null) return;
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeDemo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  _selectDate();
                },
                child: Row(
                  children: <Widget>[
                    Text(DateFormat.yMd().format(selectDateTime)),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  _selectTime();
                },
                child: Row(
                  children: <Widget>[
                    Text(selectedTime.format(context)),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
