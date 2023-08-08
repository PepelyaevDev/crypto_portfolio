extension ValidateStatusCode on int? {
  bool get validate {
    if (this == null) return false;
    return switch (this) {
      200 => true,
      _ => false,
    };
  }
}
