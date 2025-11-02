# Kana Expense Tracker - Migration Notes

## Original Features to Keep

### 1. **Category Management**
- Create/Edit expense categories
- Custom name, icon, and color for each category
- 80+ icons available (FluentUI icons)
- Color picker for categories
- Spending limit per category
- Default categories: Food, Shopping, Car, Bills, Drink, Cinema

### 2. **Expense Tracking**
- Add expenses with amount and date
- Associate expenses with categories
- Number dial input for amount entry (with decimal support)
- Automatic date tracking (default to current date)

### 3. **Reports & Analytics**
- Monthly expense reports
- Category-wise spending breakdown
- Total amount tracking per category
- Chart visualization of spending trends
- Monthly view with calendar integration

### 4. **UI Features**
- Custom bottom sheet modals
- Floating action button to add expenses
- Collapsible app bar with user greeting
- Monthly tabs for navigation
- Timeline view of expenses by day

### 5. **Firebase Integration**
- Firebase Auth (configured)
- Multi-platform support (Web, Android, iOS, macOS)
- Project: kana-expenses

## Data Models

### Category
- id (UUID)
- name (String)
- icon (IconData)
- color (Color)
- colorIndex (int)
- limit (double) - spending limit

### Expense
- id (UUID)
- value (double)
- category (CategoryModel)
- spentDate (DateTime)

## Current Stack (Old - 3 years ago)
- Flutter SDK: 2.18.0-beta
- State Management: Provider
- Routing: Named routes with MaterialApp
- UI: Custom Material Design
- Charts: Syncfusion Flutter Charts
- Icons: FluentUI System Icons
- Firebase: firebase_core, firebase_auth

## New Modern Stack (2025)
- Flutter SDK: Latest stable (3.x+)
- State Management: Riverpod 2.x
- Routing: Go Router
- UI: Material 3
- Charts: fl_chart (open source alternative)
- Icons: FluentUI System Icons (keep same)
- Firebase: Latest firebase packages
- Data Models: Freezed + json_serializable
- Testing: flutter_test, mocktail, integration_test
