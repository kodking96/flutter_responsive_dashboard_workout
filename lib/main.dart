import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/dashboard_app.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    const DashboardApp(),
  );
}
