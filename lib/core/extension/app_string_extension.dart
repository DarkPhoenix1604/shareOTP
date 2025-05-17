extension AppStringExtension on String {
  String get initial => isNotEmpty ? this[0].toUpperCase() : '';
  String get capital =>
      (isNotEmpty && length >= 2) ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
}
