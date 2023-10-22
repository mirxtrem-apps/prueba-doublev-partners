import 'package:intl/intl.dart';

abstract class DateTimeUtils {
  static final _formatter = DateFormat("dd/mm/yyyy");

  static String toIsoString(DateTime date) {
    return _formatter.format(date);
  }

  static DateTime toDateTime(String formattedString) {
    return DateTime.parse(formattedString);
  }
}