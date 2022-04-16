import 'package:calendar_view/calendar_view.dart';
import 'package:calender/pages/week_view_page.dart';
import 'package:flutter/material.dart';

import 'model/event.dart';

DateTime get _now => DateTime.now();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider<Event>(
      controller: EventController<Event>()..addAll(_events),
      child: MaterialApp(
        title: 'Flutter Calendar Page Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: WeekViewDemo(),
      ),
    );
    // ),
    // );
  }
}

List<CalendarEventData<Event>> _events = [];
