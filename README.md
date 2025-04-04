# PawMood

PawMood is a SwiftUI-based iOS app designed to detect and analyze a dog's mood using photos. Built with Firebase as the backend, it currently supports image uploads and mood tracking via Firestore.

---

## Getting Started

### 1. Clone the Repo

```bash
git clone https://github.com/Hao191/PawMood
```

### 2. Install Dependencies

Open `PawMood.xcodeproj` and make sure:

- Firebase SDK is installed via Swift Package Manager
- You have `GoogleService-Info.plist` added to the project

### 3. Set Up Firebase

- Enable **Cloud Firestore** and **Firebase Storage** in [Firebase Console](https://console.firebase.google.com/)
- Optional: Disable **App Check** during development

### 4. Run the App

Use a real device or simulator to launch the app.

---

## Technologies

- SwiftUI
- Firebase (Firestore, Storage)
- UIKit (for now, used to load image asset)
- AppCheck (development mode)

