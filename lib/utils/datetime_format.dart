import 'package:intl/intl.dart';

class FormattedDate {
  String full(DateTime dt) => DateFormat('dd.MM.yyyy').format(dt);
}
