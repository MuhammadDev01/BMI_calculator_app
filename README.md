# BMI Calculator 🧮

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

A **responsive** and **adaptive** Body Mass Index (BMI) Calculator built with Flutter. This application helps users calculate their BMI using either metric or imperial units and provides feedback based on the BMI categories defined by the World Health Organization (WHO). 

## 📱 Features

- **Responsive Design**: Automatically adjusts the UI for different screen sizes and orientations, making it suitable for smartphones, tablets, and desktops.
- **Adaptive UI**: Customizes the UI appearance based on the platform (iOS, Android, Web, etc.).
- **BMI Calculation**: Supports both metric (kg/m²) and imperial (lbs/in²) unit systems.
- **Categorized Feedback**: Provides feedback based on BMI categories: Underweight, Normal weight, Overweight, and Obesity.
- **Dark Mode Support**: Automatically switches to dark mode based on system settings.
- **Smooth Animations**: Engaging UI with smooth transitions and animations.


## 🖼️ Screenshots

![Video_2024-09-09_064300](https://github.com/user-attachments/assets/10280cbd-75e0-41b1-b31d-dc606092d966)

## 📥 Downloads

**Download App**      [Here](https://drive.google.com/drive/folders/1YOzitF6RP27tDswPjbN0Su8Wqwm8zDNN).


## 🚀 Getting Started

### Prerequisites

- Flutter SDK [Install Flutter](https://flutter.dev/docs/get-started/install)
- A code editor like [VSCode](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

### Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/MuhammadDev01/BMI_calculator_app.git
    cd BMI_calculator_app
    ```

2. **Install dependencies:**

    ```bash
    flutter pub get
    ```

3. **Run the app:**

    ```bash
    flutter run
    ```

## 🛠️ How It Works

### 📐 Calculation Formula

- **Metric System**: 
  \[
  BMI = \frac{weight(kg)}{height(m)^2}
  \]

- **Imperial System**: 
  \[
  BMI = \frac{weight(lbs) \times 703}{height(in)^2}
  \]

### 🎨 Responsive Widgets

- **`LayoutBuilder`**: Adjusts the layout based on the constraints of the parent widget.
- **`MediaQuery`**: Retrieves information about the device and screen size.
- **`Flexible` & `Expanded`**: Flexibly adjust the size of child widgets.
- **`AspectRatio`**: Maintains a consistent aspect ratio for widgets.
- **`OrientationBuilder`**: Dynamically changes the UI based on device orientation.

### 🛠️ Adaptive Design

- **Platform Specific Adaptations**: Uses `Cupertino` widgets for iOS and `Material` widgets for Android, providing a native look and feel on each platform.
- **Adaptive Icons and Buttons**: Adjusts the size and style based on the platform.

## 👤 Author

**Dev Muhammad** - [LinkedIn](https://www.linkedin.com/in/muhammad-khaled-811a9431a/) | [GitHub](https://github.com/MuhammadDev01).

**My Apps** - [Here](https://drive.google.com/drive/folders/18YQL6izZ-kHC2D2FamP89nJKfQyQOAx0).

## 💬 Feedback

If you have any feedback, please reach out at muhammadbenkhaled@gmail.com

---

**Happy Coding!** 🚀
