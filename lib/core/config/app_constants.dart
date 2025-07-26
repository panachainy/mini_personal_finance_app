/// App constants that don't change across environments
class AppConstants {
  // Prevent instantiation
  AppConstants._();

  // App Information
  static const String appId = 'com.example.mini_personal_finance_app';
  static const String supportEmail = 'support@example.com';
  static const String privacyPolicyUrl = 'https://example.com/privacy';
  static const String termsOfServiceUrl = 'https://example.com/terms';

  // API Endpoints
  static const String authEndpoint = '/auth';
  static const String transactionsEndpoint = '/transactions';
  static const String categoriesEndpoint = '/categories';
  static const String budgetsEndpoint = '/budgets';
  static const String reportsEndpoint = '/reports';

  // Local Storage Keys
  static const String userTokenKey = 'user_token';
  static const String userPreferencesKey = 'user_preferences';
  static const String themeKey = 'theme_mode';
  static const String languageKey = 'language_code';
  static const String biometricsEnabledKey = 'biometrics_enabled';
  static const String lastSyncKey = 'last_sync_timestamp';

  // Validation Rules
  static const int maxDescriptionLength = 255;
  static const int maxCategoryNameLength = 50;
  static const int maxBudgetNameLength = 100;
  static const double minTransactionAmount = 0.01;
  static const double maxTransactionAmount = 999999999.99;

  // UI Constants
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;
  static const double borderRadius = 12.0;
  static const double iconSize = 24.0;
  static const double largeIconSize = 48.0;

  // Animation Durations
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);

  // Date Formats
  static const String defaultDateFormat = 'yyyy-MM-dd';
  static const String displayDateFormat = 'MMM dd, yyyy';
  static const String fullDateTimeFormat = 'yyyy-MM-dd HH:mm:ss';

  // Currency
  static const String defaultCurrencyCode = 'THB';
  static const String defaultCurrencySymbol = '฿';

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Cache Settings
  static const Duration cacheExpiration = Duration(hours: 24);
  static const Duration shortCacheExpiration = Duration(minutes: 30);

  // Network Settings
  static const int maxRetryAttempts = 3;
  static const Duration retryDelay = Duration(seconds: 2);

  // File Settings
  static const List<String> allowedImageExtensions = ['jpg', 'jpeg', 'png'];
  static const int maxFileSize = 5 * 1024 * 1024; // 5MB

  // Security
  static const int sessionTimeoutMinutes = 30;
  static const int maxLoginAttempts = 5;
  static const Duration lockoutDuration = Duration(minutes: 15);
}
