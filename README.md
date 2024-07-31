# Open Weather App

A Flutter application to look up weather information for any location. Users can search for a location, view the weather forecast, toggle between metric and imperial units, refresh the weather data, and if the name of the location is wrong, the user will be prompted a button, on pressing it, it will find the Berlin weather by default

## Features

- **Search Location:** Users can search for any location and view the weather forecast.
- **Unit Toggle:** Toggle between metric (Celsius, meters) and imperial (Fahrenheit, miles) units.
- **Refresh Weather:** Refresh the weather data for the selected location.
- **Failure Button:** Berlin weather will be shown on pressing the button in case the required city is not found.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- Flutter SDK: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
- An IDE like Visual Studio Code or Android Studio

### Dependencies

The app uses the following packages:

- `flutter`: The Flutter framework
- `cupertino_icons`: iOS-style icons
- `equatable`: For value(in our case, they objects) equality
- `flutter_bloc`: State management
- `http`: HTTP client for API requests
- `injectable`: Dependency injection for repository
- `json_annotation`: JSON serialization/deserialization
- `weather_icons`: Weather-related icons

Dev dependencies:

- `flutter_lints`: Flutter linter rules
- `build_runner`: Code generation tool
- `injectable_generator`: Generates necessary code for `injectable`

### Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/muttahirm/openweatherapp
   cd openweatherapp
   ```

2. **Install dependencies:**

   Run the following command to install the necessary packages:

   ```bash
   flutter pub get
   ```

3. **Generate code:**

   Use the `build_runner` to generate necessary code for dependency injection and JSON serialization:

   ```bash
   flutter pub run build_runner build
   ```

4. **API Key Setup:**

   The application uses the [OpenWeatherMap API](https://openweathermap.org/api). You need an API key to fetch weather data. For now I am using my own in this demo project

   - Create a file named `secrets.dart` in the `lib/core/constants` directory.
   - Add your OpenWeatherMap API key in the following format:

     ```dart
     const String weatherKey = 'your_api_key_here';
     ```

5. **Run the App:**

   To run the app on an emulator or physical device, use:

   ```bash
   flutter run
   ```

   Ensure that the device/emulator has network access to fetch weather data.

## App Structure

The application follows a Clean Architecture pattern, organized into the following layers:

- **Core:** Shared code and utilities, such as abstractions, constants and helper functions.
- **Data:** API services, and repositories. Handles data fetching.
- **Domain:** Contains repositories, use cases, and entities.
- **Presentation:** UI components and state management (using `flutter_bloc`).

## Usage

- **Search for a location**: Enter the desired city or region in the search bar.
- **Toggle Units**: Switch between metric and imperial units using the toggle button.
- **Refresh Weather**: Pull down or tap the refresh button to update the weather data.
- **Failure Button:** Berlin weather will be shown on pressing the button in case the required city is not found.