# Configuration System

This module provides a comprehensive configuration system for the Mini Personal Finance App using dependency injection.

## Overview

The configuration system consists of:

- **AppConfig**: Abstract interface defining all configuration properties
- **Environment-specific implementations**: DevConfig, TestConfig, ProdConfig
- **EnvironmentConfig**: Helper for detecting current environment
- **AppConstants**: Static constants that don't change across environments
- **Dependency Injection**: Automatic registration based on environment

## Features

### Environment Detection

The system automatically detects the current environment using:

```dart
const envString = String.fromEnvironment('ENVIRONMENT', defaultValue: 'dev');
```

### Configuration Properties

#### App Information

- `appName`: Application name (varies by environment)
- `appVersion`: Application version
- `isDebug`: Debug mode flag
- `environment`: Current environment name

#### API Configuration

- `apiBaseUrl`: Base URL for API calls
- `apiTimeout`: Timeout duration for API requests

#### Firebase Configuration

- `enableFirebaseAnalytics`: Enable/disable Firebase Analytics
- `enableFirebaseCrashlytics`: Enable/disable Firebase Crashlytics

#### Database Configuration

- `databaseName`: Local database name
- `databaseVersion`: Database schema version

#### Feature Flags

- `enableOfflineMode`: Enable offline functionality
- `enableDarkTheme`: Enable dark theme support
- `enableBiometrics`: Enable biometric authentication

#### Logging Configuration

- `enableLogging`: Enable/disable logging
- `logLevel`: Logging level (debug, info, error)

## Usage

### 1. Initialization

In your `main.dart`:

```dart
import 'injection/injection.dart';
import 'core/config/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependency injection
  configureDependencies();

  // Get app configuration
  final appConfig = getIt<AppConfig>();

  runApp(MyApp(config: appConfig));
}
```

### 2. Accessing Configuration

#### In Widgets (with extension):

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final config = appConfig; // Using extension
    return Text(config.appName);
  }
}
```

#### In Services

```dart
@injectable
class ApiService {
  final AppConfig _config;

  ApiService(this._config);

  Future<void> makeRequest() async {
    final response = await http.get(
      Uri.parse('${_config.apiBaseUrl}/endpoint'),
    ).timeout(_config.apiTimeout);
  }
}
```

#### Direct Access

```dart
final config = getIt<AppConfig>();
print('Current environment: ${config.environment}');
```

### 3. Using Constants

```dart
Container(
  padding: EdgeInsets.all(AppConstants.defaultPadding),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(AppConstants.borderRadius),
  ),
  child: Text('Hello World'),
)
```

## Environment Configurations

### Development (dev)

- Debug mode enabled
- Firebase analytics disabled
- Extended API timeout (30s)
- Verbose logging
- All feature flags enabled for testing

### Test (test)

- Debug mode enabled
- Firebase services disabled
- Short API timeout (5s)
- Minimal feature flags
- In-memory database

### Production (prod)

- Debug mode disabled
- Firebase analytics enabled
- Optimized API timeout (15s)
- Production logging
- All features enabled

## Environment Variables

Set the environment using:

```bash
# Development (default)
flutter run

# Test
flutter run --dart-define=ENVIRONMENT=test

# Production
flutter run --dart-define=ENVIRONMENT=prod
```

## Adding New Configuration

1. **Add property to AppConfig interface**

```dart
abstract class AppConfig {
  // ... existing properties
  bool get newFeatureEnabled;
}
```

1. **Implement in all environment configs**

```dart
@dev
@Injectable(as: AppConfig)
class DevConfig implements AppConfig {
  // ... existing implementations
  @override
  bool get newFeatureEnabled => true; // Enable in dev
}
```

1. **Use in your code**

```dart
final config = getIt<AppConfig>();
if (config.newFeatureEnabled) {
  // Feature-specific code
}
```

## Best Practices

1. **Use dependency injection**: Always inject AppConfig rather than accessing it directly
2. **Environment-specific values**: Put environment-specific values in AppConfig
3. **Static constants**: Put unchanging values in AppConstants
4. **Feature flags**: Use boolean properties for feature toggling
5. **Type safety**: Leverage Dart's type system for configuration validation

## Dependencies

- `injectable`: Dependency injection annotations
- `get_it`: Service locator
- `injectable_generator`: Code generation for DI

## Code Generation

After modifying configuration classes, run:

```bash
flutter packages pub run build_runner build
```

This generates the necessary dependency injection code.
