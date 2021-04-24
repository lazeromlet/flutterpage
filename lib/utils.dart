// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'package:table_calendar/table_calendar.dart';
import 'JournalEntry.dart';

/// extended example events
class Event extends JournalEntry{
  String title;
  String plant;
  int    age;
  int    height;
  bool   isFlowering;
  bool   wasTrained;
  bool   wasWatered;

  Event.full(this.title, this.plant, this.age, this.height, this.isFlowering, this.wasTrained, this.wasWatered);

  @override
  String toString() => "$title: $plant, $age days old, $height inches tall, $isFlowering (flowering), $wasTrained (training), $wasWatered (watered)";
}

/// Adjusted Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

final _kEventSource = Map.fromIterable(List.generate(50, (index) => index),
    key: (item) => DateTime.utc(2021, 3, item * 5),
    value: (item) => List.generate(
        item % 4 + 1, (index)  => Event.full('Event $item', 'strawberry', (item%4 + index), (1 + index), false, false, true )))
  ..addAll({
    DateTime.now(): [
      Event.full('Event 1', 'grapes', 42, 25, false, true, true),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
        (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kNow = DateTime.now();
final kFirstDay = DateTime(kNow.year, kNow.month - 3, kNow.day);
final kLastDay = DateTime(kNow.year, kNow.month + 3, kNow.day);