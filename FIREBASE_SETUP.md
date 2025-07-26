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

### Flutter Setup

1. Install Firebase CLI: `npm install -g firebase-tools`
2. Run: `dart pub global activate flutterfire_cli`
3. Configure: `flutterfire configure`
