class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Language(this.id, this.name, this.flag, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, '🇺🇸', 'English', 'EN'),
      Language(2, '🇲🇽', 'Spanish', 'MX'),
      Language(3, '🇵🇹', 'Portugues', 'PT'),
    ];
  }
}
