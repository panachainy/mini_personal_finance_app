# Firebase Setup Guide

[Reference](https://firebase.google.com/docs/flutter/setup?platform=ios)

## Important Security Notice

Firebase configuration files containing API keys are excluded from version control for security reasons.

## Required Files (Not in Git)

The following files need to be obtained from your Firebase project console:

1. `android/app/google-services.json` - Android configuration
2. `ios/Runner/GoogleService-Info.plist` - iOS configuration
3. `lib/firebase_options.dart` - Flutter configuration
4. `firebase.json` - Firebase project configuration

## Setup Instructions

### 1. Firebase Console Setup

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Select your project: `mini-personal-finance-app`
3. Download the required configuration files

### 2. Android Setup

1. Download `google-services.json` from Firebase Console
2. Place it in `android/app/google-services.json`

### 3. iOS Setup

1. Download `GoogleService-Info.plist` from Firebase Console
2. Place it in `ios/Runner/GoogleService-Info.plist`

### 4. Flutter Setup

1. Install Firebase CLI: `npm install -g firebase-tools`
2. Run: `dart pub global activate flutterfire_cli`
3. Configure: `flutterfire configure`

### 5. Environment Variables (Recommended)

For production, consider using environment variables for API keys:

```dart
// In lib/firebase_options.dart
static const FirebaseOptions android = FirebaseOptions(
  apiKey: String.fromEnvironment('FIREBASE_ANDROID_API_KEY'),
  // ... other config
);
```

## Security Best Practices

- Never commit Firebase configuration files to public repositories
- Use Firebase Security Rules to protect your database
- Regularly rotate API keys
- Monitor Firebase usage for suspicious activity
