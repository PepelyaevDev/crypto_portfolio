enum AppLocale {
  en('English', [UsageType.app, UsageType.news]),
  ru('Русский', [UsageType.app, UsageType.news]),
  de('Deutsch', [UsageType.news]),
  nl('Dutch', [UsageType.news]),
  es('Español', [UsageType.news]),
  fr('Français', [UsageType.news]),
  it('Italiano', [UsageType.news]),
  pt('Português', [UsageType.news]),
  tr('Türkçe', [UsageType.news]);

  const AppLocale(this.countryName, this.usageTypes);
  final String countryName;
  final List<UsageType> usageTypes;

  static AppLocale fromString(String value) {
    return AppLocale.values.firstWhere(
      (element) => element.name == value,
      orElse: () => AppLocale.en,
    );
  }
}

enum UsageType { app, news }
