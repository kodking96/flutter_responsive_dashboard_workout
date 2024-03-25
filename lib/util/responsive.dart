import 'package:flutter/material.dart';

/**
   * Desktop - > 1100 Pixels
   * Tablet - > 850 & < 1100 Pixels
   * Mobile < 850 Pixels
   */

class Responsive {
  static isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
