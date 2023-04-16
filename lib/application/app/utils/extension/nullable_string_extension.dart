extension NullableStringExtension on String? {
  double get toDouble {
    final String newString = this!.replaceAll(',', '.');
    return double.parse(newString);
  }
}
