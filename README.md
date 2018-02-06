# Appfigurate™
 
Appfigurate is a suite of tools for iOS and watchOS developers and testers, that allow you to securely configure your apps and app extensions at runtime. Appfigurate increases your efficiency by removing the edit/compile/deploy cycle when you need to make configuration changes. Appfigurate consists of:

* Appfigurate app - both a Simulator and an App Store build - to allow you to configure your apps at runtime
* Appfigurate library - a tiny static library to embed into your apps
* Examples
* Documentation

### iPhone

![iPad Multitasking](./Documentation/Images/LetterLearner_iPhone.png)

### iPad multitasking

![iPad Multitasking](./Documentation/Images/LetterLearner_iPad.png)

## Features

Feature                                 | Appfigurate Simulator | Appfigurate App Store
--------------------------------------- | --------------------- | ---------------------
Compatible with Xcode 8 and Xcode 9 | ![Tick](./Documentation/Images/greentick.png) | ![Tick](./Documentation/Images/greentick.png)
Configure iOS 8.0+ apps | ![Tick](./Documentation/Images/greentick.png) | ![Tick](./Documentation/Images/greentick.png)
Configure iOS 8.0+ app extensions | ![Tick](./Documentation/Images/greentick.png) | ![Tick](./Documentation/Images/greentick.png)
Configure watchOS 2.0+ apps | ![Tick](./Documentation/Images/greentick.png) | ![Tick](./Documentation/Images/greentick.png)
Configure watchOS 3.0+ app extensions | available soon | available soon
Configure iOS UI automation tests | ![Tick](./Documentation/Images/greentick.png) | ![Tick](./Documentation/Images/greentick.png)
Supports iPad multitasking | ![Tick](./Documentation/Images/greentick.png) | ![Tick](./Documentation/Images/greentick.png)
Apply configuration locally | ![Tick](./Documentation/Images/greentick.png) | ![Tick](./Documentation/Images/greentick.png)
Apply configuration remotely (via SMS/Email) |  | ![Tick](./Documentation/Images/greentick.png)
Your apps metadata shared across all Simulators | ![Tick](./Documentation/Images/greentick.png) |
Your apps metadata securely stored on each Device |  | ![Tick](./Documentation/Images/greentick.png)
Unlock Appfigurate with PIN/TouchID/FaceID |   | ![Tick](./Documentation/Images/greentick.png)

## Installating Appfigurate app

Clone the Appfigurate repository using the terminal command:

>git clone https://github.com/electricbolt/appfiguratesdk.git

### Simulator build
To install the Appfigurate Simulator app into your iOS Simulator, open `AppfigurateWorkspace.xcworkspace` in Xcode 8 or above, ensure `Appfigurate` is selected in the Scheme popup, choose your Simulator device e.g. `iPhone SE` and run.

![AppfigurateScheme](./Documentation/Images/AppfigurateScheme.png)

### Device build
-The Appfigurate Simulator app in this repository cannot be installed onto iOS devices. You should install the iOS device build from the [App Store](https://itunes.apple.com/us/app/appfigurate/id1332575368?ls=1&mt=8) instead.

## Integrate Appfigurate library

Follow the [Quick Start Guide](./Documentation/QuickStartGuide.md) to integrate Appfigurate library into your own apps.

## Further documentation

[Subclassing APLConfiguration](./Documentation/SubclassingAPLConfiguration.md) - methods to override in your APLConfiguration subclass.

[Security and export compliance](./Documentation/SecurityExportCompliance.md) - best practices.

[Advanced configuration](./Documentation/AdvancedConfiguration.md) - Info.plist options and app startup.

[Additional library functions](./Documentation/AdditionalFunctions.md) - listening for configuration changes.

[Displaying overridden configuration](./Documentation/OverriddenConfiguration.md) - in your iOS app.

[Automation testing configuration](./Documentation/AutomationTestingConfiguration.md) - how to setup.
