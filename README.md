# Loyaute App
Loyaute Application built using flutter. This project support for Android and iOS app. The project is build using clean architecture approach separated by feature based.

## Getting Started
This section will help you understand the structure of the project as well as guide you to development process. 

### Project Structure
The structure of project separated by functionality of file, with structure as below
```
├── README.md
├── .vscode
├── android
├── ios
├── build
├── assets
│   ├── fonts
│   │   ├── PlusJakartaSans
│   ├── icons
│   │   ├── 2.0x
│   │   ├── 3.0x
│   │   ├── 4.0x
│   │   └── icon.png
│   └── images
│       ├── 2.0x
│       ├── 3.0x
│       ├── 4.0x
│       └── image.png
├── lib
│   ├── app
│   │   ├── consts
│   │   │   ├── assets
│   │   │   │   ├── icons.dart
│   │   │   │   └── images.dart
│   │   │   └── locals
│   │   │       ├── keys.dart
│   │   │       └── persistent.dart
│   │   ├── i18n
│   │   │   ├── locales
│   │   │   │   ├── en.dart
│   │   │   │   └── id.dart
│   │   │   ├── strings.dart
│   │   │   └── translation_service.dart
│   │   ├── styles
│   │   │   ├── colors.dart
│   │   │   ├── styles.dart
│   │   │   └── text_styles.dart
│   │   └── utils
│   │       └── common_util.dart
│   ├── features
│   │   ├── feature1
│   │   │   ├── data
│   │   │   │   ├── converters
│   │   │   │   │   ├── converter_model_entity.dart
│   │   │   │   │   └── converter_model_entity.dart
│   │   │   │   ├── datasources
│   │   │   │   │   ├── local_datasource.dart
│   │   │   │   │   └── network_datasource.dart
│   │   │   │   ├── models
│   │   │   │   │   ├── model1.dart
│   │   │   │   │   └── model2.dart
│   │   │   │   └── repositories
│   │   │   │   │   ├── repository_impl1.dart
│   │   │   │   │   └── repository_impl2.dart
│   │   │   ├── domain
│   │   │   │   ├── entities
│   │   │   │   │   ├── entity1.dart
│   │   │   │   │   └── entity2.dart
│   │   │   │   ├── repositories
│   │   │   │   │   ├── repository1.dart
│   │   │   │   │   └── repository2.dart
│   │   │   │   └── usecases
│   │   │   │   │   ├── usecase1.dart
│   │   │   │   │   └── usecase2.dart
│   │   │   ├── presentation
│   │   │   │   ├── get
│   │   │   │   │   ├── binding.dart
│   │   │   │   │   ├── controller.dart
│   │   │   │   │   └── state.dart
│   │   │   │   ├── pages
│   │   │   │   │   ├── page1.dart
│   │   │   │   │   └── page2.dart
│   │   │   │   └── widgets
│   │   │   │   │   ├── widget1.dart
│   │   │   │   │   └── widget2.dart
│   │   └── feature2
│   │   │   ├── data
│   │   │   │   ├── converters
│   │   │   │   │   ├── converter_model_entity.dart
│   │   │   │   │   └── converter_model_entity.dart
│   │   │   │   ├── datasources
│   │   │   │   │   ├── local_datasource.dart
│   │   │   │   │   └── network_datasource.dart
│   │   │   │   ├── models
│   │   │   │   │   ├── model1.dart
│   │   │   │   │   └── model2.dart
│   │   │   │   └── repositories
│   │   │   │   │   ├── repository_impl1.dart
│   │   │   │   │   └── repository_impl2.dart
│   │   │   ├── domain
│   │   │   │   ├── entities
│   │   │   │   │   ├── entity1.dart
│   │   │   │   │   └── entity2.dart
│   │   │   │   ├── repositories
│   │   │   │   │   ├── repository1.dart
│   │   │   │   │   └── repository2.dart
│   │   │   │   └── usecases
│   │   │   │   │   ├── usecase1.dart
│   │   │   │   │   └── usecase2.dart
│   │   │   ├── presentation
│   │   │   │   ├── get
│   │   │   │   │   ├── binding.dart
│   │   │   │   │   ├── controller.dart
│   │   │   │   │   └── state.dart
│   │   │   │   ├── pages
│   │   │   │   │   ├── page1.dart
│   │   │   │   │   └── page2.dart
│   │   │   │   └── widgets
│   │   │   │   │   ├── widget1.dart
│   │   │   │   │   └── widget2.dart
│   └── main.dart
├── pubspec.lock
├── pubspec.yaml
└── test
    ├── data
    │   ├── converters
    │   │   ├── converter1.dart
    │   │   └── converter2.dart
    │   ├── datasources
    │   │   ├── datasource1.dart
    │   │   └── datasource2.dart
    │   ├── models
    │   │   ├── model1.dart
    │   │   └── model2.dart
    │   └── repositories
    │       ├── repository_impl1.dart
    │       └── repository_impl2.dart
    ├── domain
    │   ├── usecase1.dart
    │   └── usecase2.dart
    └── main.dart
        ├── get
        │   ├── converter1.dart
        │   └── converter2.dart
        ├── pages
        │   ├── datasource1.dart
        │   └── datasource2.dart
        └── widgets
            ├── repository_impl1.dart
            └── repository_impl2.dart
```
The project structure in more details could be explained this way
- README.md this file, which contains all resources you need to do to start development
- Standard android, ios, web and build folder structures
- assets contains any assets file such as images, icons, fonts, json, etc.
- lib this is the main code of the application
1. app folder is the basis of the application
    - consts contains any key for replace static string key/path code in this project
    - i18n contains language string based on locale and translation helper
    - styles contains default style declaration
    - utils contains any utilities for build this project
    - app_pages.dart contains page declaration that used in this project
    - app.dart contais app declaration like MaterialApp / CupertinoApp
2. feature contains all the package structure for the specific application, the approach used in clean architecture
    - data folder contains implementation of domain repository interface, which bridge between datasource and entity. Converters for convert entity to model vice versa. Datasource used for retrieve data from network / local. Model is a extension from entity that support json converter can include platform dependency. 
    - domain folder contains the business object/function and use cases which is the main logic of the features. Entity is a business rule of this application not dependend to platform.
    - presentation folder contains the presentation of the features in ui level, and controller to handle how the ui should react to changes. Binding to declare prerequisite for this layout.
- main.dart entry point of the application
- pubspec.yaml and lock contains app setup, dependency setup
- test this is the main code of application test
    1. Add widget test in widgets and pages from this project

### How to use
To run this app please follow these steps:
1. Clone (https://github.com/CevinWays/loyaute.git)
2. Run command `flutter pub get`
3. Run the app