extension IntNullableExtension on int? {
  bool get validateHttpResponseStatus {
    if (this == null) return false;
    return switch (this) {
      200 => true,
      _ => false,
    };
  }
}
