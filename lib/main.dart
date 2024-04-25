import 'dart:async';

import 'package:expense_tracker_app/app.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(() async {
    runApp(const ExpenseTrackerApp());
  }, (error, stack) {});
}
