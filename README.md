# Zero to Hero

*A course for the aspiring full-stack developer based on Dart and Flutter - by Robert Mollentze*

This document is intended to use as a reference for this course. See supplementary modules found at https://github.com/robmllze/. New modules and information will be added and corrections will be made as we move through this course together.

---

## Course Outline

### 0. Dart and Programming Basics

* [0.1. Why Choose Dart and Flutter](#01-why-choose-dart-and-flutter)
* Installing and Updating Dart, Flutter and VS Code
* [0.3. Basic Console Commands in VS Code](#03-basic-console-commands-in-vs-code)
* Environment Setup
    * Git, GitLab and GitHub Basics
    * Online Resources
    * Useful Extensions for VS Code
        * "Dart", "Flutter"
        * "Live Share"
        * "GitHub", "GitHub Pull Requests and Issues"
        * "GitLab Workflow"
        * "Todo Tree"
        * "Alphabetical Sorter"
        * "Draw∙io Integration"
* Syntax, Style, Scope and Comments
* Variables, Operators and Null Safety
* Functions
* Loops
* Strings
* Lists, Sets, Queues and Maps
* Importing and Exporting
* Working With DateTime and Timestamp
* Classes, Interfaces, Enums
* Iterators
* Exceptions
* pubspec.yaml and pub.dev
* Debugging with assert()
* Doc Comments & Markdown

### 1. Advanced Dart and Programming

* VS Code Shortcuts
* Singleton Classes
* The Meta Package
* The Math Pacakge and Using (Brackets)
* Async, Await and Futures
* Streams
* Regular Expressions
* HTML PULL


### Appendix

* [Jargon](#jargon)

---

## 0. Dart and Programming Basics

### **0.1. Why Choose Dart and Flutter**

Dart is one of the fastest growing programming languages and Flutter one of the fastest growing frameworks for Dart. Both are maintained by Google. Other fast growing languages include Rust (maintained by Mozilla/The Rust Foundation), Go (by Google), Typescript (by Microsoft) and WebAssembly (by W3C, Mozilla, Microsoft Google and Apple).

Dart is designed to have a C-like syntax for many practical reasons but also to attract the systems and game developer community on top of web and app developers. "Programmers" and "Coders" often clash because of their phylosophical differences and Dart is designed to help unite these two communities to encourage growth.

Dart and Flutter is a very sensible choice for application development for mobile and the web. I would argue that they are the *most* sensible choice, for the reasons above and the following:

* Dart and Flutter apps can be easily be designed to run of the box on nearly all platforms including the web, Android, iOS and Windows.
* When building a Flutter application for the web, Dart gets converted to JavaScript and when building for Android, iOS or Windows, Dart compiles into native code. This means speed.
* They're completely free to use.
* Flutter is also an excellent choice to build regular websites.
* They limit the need to use and learn other languages and frameworks. After this course, you'll be more than adequately equipped to develop any type of website or application for any device.
* More money is being invested in Dart and Flutter by Google than all other tools of their kind combined.

This is a great time to learn Dart and Flutter because it will stay relevant for the next 10+ years and the critical thinking you'll learn during this course and your development journey will stay with you for life.

### **0.3. Basic Console Commands in VS Code**

#### 💻 ***Installing & Upgrading***

👉 Upgrading Dart on MacOS
```bash
brew install dart
brew upgrade dart
```
👉 Upgrading Flutter
```bash
flutter upgrade
```
👉 Getting Current Versions
```bash
flutter --version
dart --version
```
📚 See https://dart.dev/get-dart

#### 💻 ***Creating New Projects***

👉 Creating a New Dart Project
```bash
dart create YOUR_PROJECT_NAME
dart create . --force
```
👉 Creating a New Flutter Project
```bash
flutter create YOUR_PROJECT_NAME
flutter create .
```

#### 💻 ***Running & Compiling***

👉 Running a Dart App:
```bash
dart run
```
👉 Running a Dart app with arguments:
```bash
dart run MY_MAIN_FILE arg1 arg2 arg3 etc
```
👉 Compiling a Dart file located in the *bin* folder to an executable:
```bash
dart compile exe bin/MY_MAIN_FILE.dart
```
👉 Compiling a Dart file located in the *bin* folder to a JavaScript script:
```bash
dart compile js bin/MY_MAIN_FILE.dart
```
👉 Running your compiled executable located in the *bin* folder:
```bash
bin/MY_MAIN_FILE arg1 arg2 arg3 etc
```

---

## Appendix

### **Jargon**

#### E
An **expression** is a combination of objects and operators such as `a + 2.0 * b >= pi - 1.0 - "four".length` that evaluates to some type such as a boolean.

#### P
A **package** or **library** is a set of pre-defined functions, classes, varaibles, etc., that's not directly visible but can be imported to your code.