import 'package:injectable/injectable.dart';

/// Environment types for the application
enum Environment { dev, test, prod }

/// Environment configuration helper
@singleton
class EnvironmentConfig {
  static const String _envKey = 'ENVIRONMENT';

  Environment get currentEnvironment {
    const envString = String.fromEnvironment(_envKey, defaultValue: 'dev');

    switch (envString.toLowerCase()) {
      case 'prod':
      case 'production':
        return Environment.prod;
      case 'test':
      case 'testing':
        return Environment.test;
      case 'dev':
      case 'development':
      default:
        return Environment.dev;
    }
  }

  bool get isDevelopment => currentEnvironment == Environment.dev;
  bool get isTest => currentEnvironment == Environment.test;
  bool get isProduction => currentEnvironment == Environment.prod;

  String get environmentName {
    switch (currentEnvironment) {
      case Environment.dev:
        return 'development';
      case Environment.test:
        return 'test';
      case Environment.prod:
        return 'production';
    }
  }
}
