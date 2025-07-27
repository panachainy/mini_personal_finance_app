import 'package:injectable/injectable.dart';

/// App configuration interface
abstract class AppConfig {
  String get appName;
  String get appVersion;
  bool get isDebug;
  String get apiBaseUrl;
  Duration get apiTimeout;
  String get environment;

  // Firebase Configuration
  bool get enableFirebaseAnalytics;
  bool get enableFirebaseCrashlytics;

  // Database Configuration
  String get databaseName;
  int get databaseVersion;

  // TODO: We can improve with remote feature flags
  // Feature Flags
  bool get enableOfflineMode;
  bool get enableDarkTheme;
  bool get enableBiometrics;

  // Logging
  bool get enableLogging;
  String get logLevel;
}

/// Development configuration
@dev
@Injectable(as: AppConfig)
class DevConfig implements AppConfig {
  @override
  String get appName => 'Mini Personal Finance (Dev)';

  @override
  String get appVersion => '1.0.0+1';

  @override
  bool get isDebug => true;

  @override
  String get apiBaseUrl => 'https://dev-api.example.com';

  @override
  Duration get apiTimeout => const Duration(seconds: 30);

  @override
  String get environment => 'development';

  // Firebase Configuration
  @override
  bool get enableFirebaseAnalytics => false;

  @override
  bool get enableFirebaseCrashlytics => false;

  // Database Configuration
  @override
  String get databaseName => 'personal_finance_dev.db';

  @override
  int get databaseVersion => 1;

  // Feature Flags
  @override
  bool get enableOfflineMode => true;

  @override
  bool get enableDarkTheme => true;

  @override
  bool get enableBiometrics => false;

  // Logging
  @override
  bool get enableLogging => true;

  @override
  String get logLevel => 'debug';
}

/// Production configuration
@prod
@Injectable(as: AppConfig)
class ProdConfig implements AppConfig {
  @override
  String get appName => 'Mini Personal Finance';

  @override
  String get appVersion => '1.0.0+1';

  @override
  bool get isDebug => false;

  @override
  String get apiBaseUrl => 'https://api.example.com';

  @override
  Duration get apiTimeout => const Duration(seconds: 15);

  @override
  String get environment => 'production';

  // Firebase Configuration
  @override
  bool get enableFirebaseAnalytics => true;

  @override
  bool get enableFirebaseCrashlytics => true;

  // Database Configuration
  @override
  String get databaseName => 'personal_finance.db';

  @override
  int get databaseVersion => 1;

  // Feature Flags
  @override
  bool get enableOfflineMode => true;

  @override
  bool get enableDarkTheme => true;

  @override
  bool get enableBiometrics => true;

  // Logging
  @override
  bool get enableLogging => true;

  @override
  String get logLevel => 'info';
}

/// Test configuration
@test
@Injectable(as: AppConfig)
class TestConfig implements AppConfig {
  @override
  String get appName => 'Mini Personal Finance (Test)';

  @override
  String get appVersion => '1.0.0+1';

  @override
  bool get isDebug => true;

  @override
  String get apiBaseUrl => 'https://test-api.example.com';

  @override
  Duration get apiTimeout => const Duration(seconds: 5);

  @override
  String get environment => 'test';

  // Firebase Configuration
  @override
  bool get enableFirebaseAnalytics => false;

  @override
  bool get enableFirebaseCrashlytics => false;

  // Database Configuration
  @override
  String get databaseName => 'personal_finance_test.db';

  @override
  int get databaseVersion => 1;

  // Feature Flags
  @override
  bool get enableOfflineMode => false;

  @override
  bool get enableDarkTheme => false;

  @override
  bool get enableBiometrics => false;

  // Logging
  @override
  bool get enableLogging => true;

  @override
  String get logLevel => 'debug';
}
