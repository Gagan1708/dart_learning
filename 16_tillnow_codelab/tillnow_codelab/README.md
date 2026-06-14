# tillnow_codelab

This folder contains the Flutter example app used throughout the "Till Now" Dart/Flutter codelab.

- **Purpose:** A compact learning project demonstrating Dart language features and Flutter app structure covered in the codelab series.
- **Contents:** Platform folders for Android, iOS, web, macOS, Linux, and Windows; a `lib/` directory with the app source (`main.dart`, `data.dart`); and build artifacts under `build/`.
- **Get started:** Open the project in VS Code or Android Studio and run the app with `flutter run` (select a device or platform).
- **Notes:** The project is intentionally minimal so codelab examples remain focused on language and framework concepts rather than app complexity.

See `lib/main.dart` for the app entry point and `lib/data.dart` for small sample data used by examples.

## Concepts demonstrated in key files

- `lib/main.dart` — UI and runtime examples:
	- App entry with `runApp` and a `StatelessWidget` (`DocumentApp`).
	- `Scaffold`, `AppBar`, `ListView.builder`, `Text`, `Checkbox`, and `Row` usage.
	- `StatefulWidget` and `setState` in `BlockWidget` for local state.
	- Date/time handling with `DateTime` and `Duration`.
	- Pattern matching and `switch` expressions for concise control flow.
	- Records destructuring to extract metadata: `final (title, :modified) = document.metadata`.

- `lib/data.dart` — data modeling and parsing:
	- JSON decoding with `jsonDecode` into `Map<String, Object?>`.
	- Pattern matching (`if (map case {...})`) to extract nested JSON fields.
	- Records as a return type for `metadata` (e.g., `(String, {DateTime modified})`).
	- Sealed class modeling (`sealed class Block`) and exhaustive `switch`-based factories.
	- Factory constructor `Block.fromJson` using `switch` on JSON shapes.
	- Simple immutable data patterns with `final` fields and a `const` sample JSON string.
