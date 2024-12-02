# Currency Converter Project
A Flutter-based currency converter application with robust functionalities, security features, and offline support.

# Features
List of Supported Currencies:

- Displays supported currencies with their respective country flags.
- Caches currency data in a local database after the first API request for future use.
- Historical Exchange Rates:

- Displays historical exchange rates for the past 7 days for two selected currencies.
- Currency Conversion:

- Allows users to convert amounts between two selected currencies.
- Security Features:

  *Prevents app usage on rooted (Android) or jailbroken (iOS) devices.
  Implements secure data storage mechanisms for sensitive information.
  Offline Mode:

- Works seamlessly without an internet connection using cached data.

# Tools and Libraries

- State Management:

- BLoC Pattern for structured and scalable state management following clean architecture principles.
  Dependency Injection:
- Utilized GetIt for efficient dependency injection.

- Database:
    * Hive library for local data storage with robust justification for its reliability and compatibility with Flutter.
    * CachedNetworkImage to handle efficient flag loading with offline support and memory management.

- Unit Testing:
    * Comprehensive test coverage for API integration and business logic.

- Material Design:
    * Used Google's Material Design components for intuitive and user-friendly UI.


# Localizations
- to generate localizations run this command "dart run intl_utils:generate"

# To Build Release Version
- dart run lib/env/env_specific_handlers/dev_handler.dart
- flutter build apk --release --no-tree-shake-icons --dart-define-from-file=.run/json/dev.json  --flavor dev


# Contributing
- Contributions are welcome. Please follow the guidelines mentioned in CONTRIBUTING.md.

# License
- This project is licensed under the MIT License - see the LICENSE file for details.