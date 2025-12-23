# WaDirectMessage - Direct Chat
![wadirectmessage icon](./assets/app.png)

WaDirectMessage is your go-to tool for sending messages to any number not saved in your phonebook. Whether it's for business or a quick one-time chat, WaDirectMessage streamlines the process.

## Features
- Optional prefilled message text
- Simple and clean UI (built for speed).
- Direct chat without saving numbers.
- Supports all international country codes.
- No data collection - Your privacy is our priority.

## Screenshots
- Home screen: see `Screenshot/homeScreen.jpg`


## Tech Stack
- Flutter (Dart)
- Android and iOS targets


## Project Structure
```
.
├── lib/
│   ├── main.dart
│   ├── screens/
│   │   └── home_screen.dart
│   └── widgets/
│       └── about.dart
├── assets/
│   └── app.png
├── android/
├── ios/
├── test/
│   └── widget_test.dart
└── pubspec.yaml
```


## Prerequisites
- Flutter SDK (stable channel)
- Android Studio or Xcode with required toolchains
- Java 17 (for Gradle on Android)
- CocoaPods (for iOS)

Verify your environment:
```
flutter --version
flutter doctor -v
```


## Getting Started
1. Clone the repository:
   ```
   git clone <repo-url>
   cd wadirectmessage
   ```
2. Fetch dependencies:
   ```
   flutter pub get
   ```
3. (Optional) Run code generators or formatters if you use them.


## Running the App
- Android (device or emulator):
  ```
  flutter run -d android
  ```
- iOS (simulator):
  ```
  flutter run -d ios
  ```
  For physical iOS devices you must set up signing in Xcode.


## Building Release Binaries
- Android App Bundle (recommended for Play Store):
  ```
  flutter build appbundle --release
  ```
  Output will be in `build/app/outputs/bundle/release/`. Sample artifacts are in `release/`.

- Android APK (for sideload/testing):
  ```
  flutter build apk --release
  ```

- iOS (IPA):
  ```
  flutter build ios --release
  ```
  Then use Xcode/Transporter for distribution.


## Configuration
- App name, icons and bundle identifiers are defined in platform folders (`android/`, `ios/`).
- Flutter app metadata and dependencies are in `pubspec.yaml`.
- If you localize or change assets, update `pubspec.yaml` accordingly.


## How It Works
The app constructs WhatsApp deep links to initiate a chat without saving contacts. Typical formats:
- `https://wa.me/<phone>?text=<urlencoded-message>`
- `whatsapp://send?phone=<phone>&text=<urlencoded-message>`

On Android/iOS, launching these URIs opens WhatsApp if installed; else the app can fall back to the web URL.


## Testing
Run unit/widget tests:
```
flutter test
```


## Linting
This project includes `analysis_options.yaml` for static analysis. Run:
```
flutter analyze
```


## Troubleshooting
- WhatsApp not opening: ensure WhatsApp is installed or use the web `wa.me` link.
- Number formatting: provide full international number (no `+`, spaces, or dashes), e.g., `14155550123`.
- iOS universal links: if using `wa.me`, iOS may open Safari first depending on device configuration.
- Android build issues: verify Java version and Gradle wrapper; run `flutter clean` then retry.


## Contributing
- Fork and create a feature branch
- Keep changes small and focused
- Run `flutter analyze` and `flutter test`
- Submit a pull request with a clear description


## License
This project is licensed under the Non-Commercial Use License (NCL-1.0).

- Copyright (c) 2025 EAF microservice
- Developer: Fouad El Azbi
- Non-commercial use, modification, and distribution are permitted under the terms described in the LICENSE file.
- Any business/commercial use requires prior written authorization from the copyright holder.

See the full terms in the LICENSE file at the repository root.
