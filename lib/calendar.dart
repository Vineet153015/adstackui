import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

Widget Content(){
  DateTime today = DateTime.now();
  return Column(
    children: [
      Text("123"),
      Container(
        child: TableCalendar(
          locale: "en_US",
          rowHeight: 43,
          headerStyle: const HeaderStyle(formatButtonVisible: false),
          focusedDay: today,
          firstDay: DateTime.utc(2010,10,16),
          lastDay: DateTime.utc(2030,3,14),
          ),
      )
      
      ],
  );
}