# dynamic_ui_task

<p align="center">
  <img src="https://github.com/SunnyArora7/dynamic_user_interface/blob/main/repo_resources/app.gif" width="250" alt="sr_1"/>
  
</p>

# Overview
This project is developed to demonstrate how to dynamically update the user interface (UI) of a Flutter application. The goal of the task was to create an approach that allows changes to the widget layout, sizing, and other properties without modifying the app code directly. The application uses a JSON-based configuration that can update the UI elements in real-time based on the data provided.

# Core Components
1. Assets Folder:
    images: Stores the images used in the app.
    json: Contains JSON files that define the dynamic UI properties (e.g., size, colour, etc.).
2. Lib Folder (Business Logic):
    Controller Folder: Contains files for state management and methods to update the UI dynamically based on the JSON configuration.
    Model Folder: Contains classes and models that parse the JSON data into usable objects for updating the UI.
    Screen Folder: Contains the UI screens (e.g., home.dart) which display widgets that are dynamically generated based on the JSON data.

# Task Approach
The task's primary goal was to create a dynamic UI that could be updated without modifying the app code directly. The approach taken is as follows:
1. JSON-Based Configuration:
   The app uses JSON files stored in the assets/json/ directory.
   These JSON files define various properties of the UI such as widget type (e.g., Container, Text, Image), layout, size, and other attributes.
   The JSON structure can be easily modified to update the app UI.
2. Controller Logic:
   The controller/ folder contains the logic that loads the JSON data, parses it, and manages the UI state.
   Methods in the controller parse the JSON configuration and trigger updates to the UI based on the new values (e.g., updating widget properties or changing the layout).
3. Model Parsing:
   The model/ folder contains classes that represent the JSON data and provide methods for converting it into Dart objects.
   This model layer decouples the raw JSON data from the UI, allowing for easier updates and modifications without affecting the business logic.
4. Dynamic UI Rendering:
   The screen/ folder contains the home.dart file, where the UI is rendered dynamically based on the parsed JSON configuration.
   Widgets are created or updated based on the configuration in the JSON file, and any changes to the JSON data (like changing widget types, sizes, or layouts) automatically reflect on the app without modifying the app’s codebase.


# How It Works

1.Loading JSON Data:
    When the app starts, it loads the JSON file from the assets/json/ directory, which contains the layout and properties of the UI components.
2.Parsing JSON:
    The controller file parses the JSON data into models. These models contain information about widgets, their properties, and layout settings.
3.Rendering UI:
    The parsed data is passed to the UI, which dynamically renders widgets based on the data. For example, a Container widget may be rendered with a specific size or an Image widget may be loaded based on the file path from the JSON configuration.
4.Dynamic Updates:
    Whenever the JSON data is updated, the UI automatically reflects the changes (e.g., layout changes, widget properties like color, padding, etc.) without requiring any code changes in the app itself.


### Installation
1. Clone the repository to your local machine:

 ```bash
   git clone https://github.com/SunnyArora7/dynamic_user_interface.git
 ```

2. Navigate to the project directory:

 ```bash
   cd dynamic_user_interface
 ```

3. Install dependencies by running this command in IDE terminal:

 ```bash
   flutter pub get
 ```

### Download the app

Download the android app from [Release](https://github.com/SunnyArora7/dynamic_user_interface/releases/tag/Release)