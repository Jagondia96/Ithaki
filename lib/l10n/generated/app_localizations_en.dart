// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World';

  @override
  String get homeTitle => 'Itháki Home';

  @override
  String get cardSubtitle => 'This is a proof of concept';

  @override
  String get viewButton => 'View';

  @override
  String get editButton => 'Edit';

  @override
  String get clickedView => 'You pressed view';

  @override
  String get clickedEdit => 'You pressed edit';
}
