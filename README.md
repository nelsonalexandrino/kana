# Kana - Modern Expense Tracker

A beautiful, modern expense tracking application built with Flutter and Firebase.

## Features

- **Category Management**: Create and customize expense categories with icons, colors, and spending limits
- **Expense Tracking**: Track your spending with detailed expense entries
- **Monthly Reports**: Visualize spending patterns with charts and analytics
- **Multi-Platform**: Runs on Android, iOS, Web, Windows, macOS, and Linux
- **Firebase Integration**: Cloud-based data storage and authentication

## Tech Stack

### Framework & Language
- **Flutter 3.32.8** - Latest stable Flutter SDK
- **Dart 3.8.1** - Modern Dart language features

### Architecture & State Management
- **Riverpod 2.6** - Type-safe, compile-time reactive state management
- **Go Router 14.8** - Declarative routing solution
- **Feature-First Architecture** - Organized by features for scalability

### Backend & Database
- **Firebase Core 3.15** - Firebase integration
- **Firebase Auth 5.7** - User authentication
- **Cloud Firestore 5.6** - Cloud-based NoSQL database

### Code Generation
- **Freezed 2.5** - Immutable models and union types
- **Riverpod Generator 2.6** - Auto-generated providers
- **JSON Serializable 6.9** - JSON serialization/deserialization

### UI & Design
- **Material 3** - Latest Material Design guidelines
- **FluentUI Icons 1.1** - Modern icon set
- **FL Chart 0.70** - Beautiful chart visualizations

### Testing
- **Flutter Test** - Widget and unit testing
- **Mocktail 1.0** - Mocking library
- **Integration Test** - End-to-end testing

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── firebase_options.dart     # Firebase configuration
└── src/
    ├── app.dart             # Root app widget
    ├── core/                # Core app functionality
    │   ├── theme/          # Material 3 theme configuration
    │   ├── routing/        # Go Router configuration
    │   ├── utils/          # Utility functions
    │   └── constants/      # App constants
    ├── features/           # Feature modules
    │   ├── categories/    # Category management
    │   │   ├── models/
    │   │   ├── providers/
    │   │   ├── screens/
    │   │   └── widgets/
    │   ├── expenses/      # Expense tracking
    │   │   ├── models/
    │   │   ├── providers/
    │   │   ├── screens/
    │   │   └── widgets/
    │   └── reports/       # Analytics & reports
    │       ├── providers/
    │       ├── screens/
    │       └── widgets/
    └── shared/            # Shared widgets
        └── widgets/
```

## Getting Started

### Prerequisites
- Flutter SDK 3.8.1 or higher
- Dart SDK 3.8.1 or higher
- Firebase account (for backend services)

### Installation

1. Clone the repository:
```bash
git clone <your-repo-url>
cd kana
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run code generation:
```bash
dart run build_runner build --delete-conflicting-outputs
```

4. Run the app:
```bash
flutter run
```

## Development

### Code Generation

This project uses code generation for:
- Freezed models
- Riverpod providers
- JSON serialization

To generate code:
```bash
# One-time generation
dart run build_runner build --delete-conflicting-outputs

# Watch mode (automatically regenerates on file changes)
dart run build_runner watch --delete-conflicting-outputs
```

### Running Tests

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage
```

### Code Analysis

```bash
flutter analyze
```

## Firebase Configuration

The Firebase configuration is already set up for:
- Web
- Android
- iOS
- macOS

Project: `kana-expenses`

## Migration Notes

This is a complete rewrite of the original Kana app (from 3 years ago) using modern Flutter best practices:

- Migrated from Provider to Riverpod
- Updated to Material 3 design
- Implemented feature-first architecture
- Added type-safe code generation with Freezed
- Modern routing with Go Router
- Full null safety
- Updated all dependencies to latest versions

See `.backup_firebase/MIGRATION_NOTES.md` for detailed migration information.

## License

Private project - not for distribution
