extension CountryFlagFromId on String {
  /// Converts a 2-letter country ID (ISO 3166-1 alpha-2 code) to its corresponding flag emoji.
  /// If the country ID is invalid, returns a white flag with a question mark (🏳️❓).
  String get countryFlagFromId {
    // Convert the country code to upper case
    final countryCode = this.toUpperCase();

    // Check if the country code is exactly 2 characters and alphabetic
    if (countryCode.length != 2 || !RegExp(r'^[A-Za-z]{2}$').hasMatch(countryCode)) {
      return '🏳️'; // White flag with a question mark
    }

    // Convert the 2-letter country code to the corresponding flag emoji
    return countryCode
        .split('')
        .map((char) => String.fromCharCode(127397 + char.codeUnitAt(0)))
        .join();
  }
}
