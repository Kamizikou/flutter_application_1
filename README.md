# PC16 – Week 13: Flutter Static Screen Activity (TasteTrove)

- **Student Name:** Ismael Haven Caday
- **Course:** NTC_PC16 – Mobile Development w/ Lab
- **Project Folder:** `flutter_application_1`

---

## Project Overview
This project implements a single-screen static UI in Flutter matching the **TasteTrove** home screen wireframe from Weeks 1–2. It demonstrates core Material layout composition, widget hierarchy organization, and live UI iteration via Flutter Hot Reload.

---

## Key Features & Rubric Alignment

- **Material Root & Screen Scaffold (`lib/main.dart`):**
  - Uses `MaterialApp` as the root widget with a custom `StatelessWidget` (`TasteTroveHomeScreen`) returning a `Scaffold` and `SafeArea`.
- **Nested Core Layout Widgets:**
  - Combines `Column`, `Row`, `Expanded`, `Container`, `Padding`, `Icon`, and `Text` widgets to render the top search bar (*"Find New Gourmet"*), section header (*"New Food to Explore!"*), 2-column Filipino recipe grid (*Kinilaw*, *Beef Steak*, *Lumpiang Shanghai*, *Kare-Kare*, *Chicken Adobo*, *Lechon Kawali*), and bottom navigation bar.
- **Toolchain & Hot Reload Verification:**
  - Verified on Flutter `v3.50.1` / Dart `v3.14.0` targeting Chrome web output, formatted with `dart format` and checked with `flutter analyze`.

---

## Project Structure

```text
flutter_application_1/
├── lib/
│   └── main.dart
├── test/
│   └── widget_test.dart
├── pubspec.yaml
└── README.md

```

---

## How to Run

1. **Install dependencies:**
```bash
flutter pub get

```


2. **Run on Chrome or an emulator:**
```bash
flutter run

```


3. **Format and analyze code:**
```bash
dart format lib/main.dart
flutter analyze

```



```

### Quick Update to Your Week 13 Repo
1. Open `README.md` inside your Week 13 project folder (`flutter_application_1`), paste the markdown above, and press **Ctrl + S**.
2. Push the updated `README.md` to GitHub:
   ```powershell
   git add README.md
   git commit -m "docs: add Week 13 TasteTrove README"
   git push

```
