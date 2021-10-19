### Release History

#### 2.2.0 19 October 2021 (Updated)

* **Xcode:** Tested for compatibility with Xcode 13

#### 2.2.0 17 March 2021

* **Xcode:** 12.4+, **Minimum deployment target:** iOS 10.0, watchOS 3.0
* **SDK:** Removal of `APLConfigurationClass` from `Info.plist` for increased reliability and faster startup time of your app. You must add an implementation of the `APLConfigurationClass` function into your app as per the prototype in `Appfigurate.h`, otherwise a linker error will be issued. The suggested location is to place this function at the end of your `APLConfiguration` subclass file.
* **App:** Output Objective-C implementation now includes APLConfigurationClass() function (≡ ‣ [App name] ‣ OBJ-C LIBRARY INTEGRATION section ‣ Output implementation).
* **App:** Output Swift implementation now includes APLConfigurationClass() function (≡ ‣ [App name] ‣ SWIFT LIBRARY INTEGRATION section ‣ Output implementation).
* **App:** Output Info.plist snippet no longer includes APLConfigurationClass declaration (≡ ‣ [App name] ‣ OBJ-C/SWIFT LIBRARY INTEGRATION section ‣ Output Info.plist snippet).

#### 2.1.1 14 March 2021

* **Xcode:** 12.4+, **Minimum deployment target:** iOS 10.0, watchOS 3.0
* **App:** Due to incomplete emulation of iOS in macOS Big Sur on Apple Silicon, Appfigurate can not be downloaded from the App Store and run as an [iOS App on macOS](https://developer.apple.com/documentation/apple_silicon/running_your_ios_apps_on_macos) app. Appfigurate App Store continues to function on a real iPhone, iPod or iPad device.
* **SDK:** Due to incomplete emulation of iOS in macOS Big Sur on Apple Silicon, Appfigurate Library will ignore any attempted configuration changes when *your* app is run as an [iOS app on macOS](https://developer.apple.com/documentation/apple_silicon/running_your_ios_apps_on_macos) app. Appfigurate Library continues to function on a real iPhone, iPod, iPad or Simulator device.
* **SDK:** For `SwiftExample/Common/ExampleConfiguration.swift` removed use of `#if DEBUG` active compliation condition and replaced with `ENCRYPTED()` function. Online documentation also updated to remove [Step 2: DEBUG active compilation condition](https://github.com/electricbolt/appfiguratesdk/wiki/integration#integrating-appfigurate-library-using-swift).
* **SDK:** Moved SwiftExample and ObjCExample into their own repositories.

#### 2.1.0 27 September 2020

* **Xcode:** 12.0+, **Minimum deployment target:** iOS 10.0, watchOS 3.0
* **App:** Full Apple Silicon support - Appfigurate Simulator now contains arm64 architecture alongside existing i386 and x86_64 architectures.
* **App:** Fix broken multipeer import/export on OS 14.

#### 2.0.2 17 September 2020

* **Xcode:** 12.0+, **Minimum deployment target:** iOS 9.0, watchOS 3.0
* **App:** Changes required for compatibility with iOS 14
* **SDK:** Adds support for Swift Package Manager. Existing integration technologies (Manual, Carthage, Cocoapods) continue to be available.
* **SDK:** Appfigurate Library security enhancements - digital signature verification of applied configuration via secure enclave on eligible devices.
* **SDK:** Partial Apple Silicon support - Appfigurate Library contains arm64 architecture for iOS and watchOS Simulators. A future release will support running Appfigurate Simulator on Apple Silicon Macs. 

#### 2.0.1 13 July 2020

* **Xcode:** 11.5+, **Minimum deployment target:** iOS 9.0, watchOS 3.0
* **SDK:** [Bug fix](https://github.com/electricbolt/appfiguratesdk/issues/1) for [AppfigurateSE macOS app](https://apps.apple.com/us/app/appfiguratese/id1466929147?ls=1&mt=12) only.

#### 2.0.0 21 June 2020

* **Xcode:** 11.5+, **Minimum deployment target:** iOS 9.0, watchOS 3.0
* **SDK:** Full support of Swift 5.2+ using property wrappers.
* **SDK:** Appfigurate Library requires Swift to be linked to your target.
* **SDK:** Appfigurate Library is now distributed as a single static XCFramework rather than separate `libAppfigurateLibrary.a` (iOS) and `libAppfigurateLibraryWatch.a` (watchOS) static libraries.
* **SDK:** Example apps are now available in both Objective-C and Swift, and have been updated to support `UIWindowScene` (multiple windows) on iPadOS 13+.
* **SDK:** Your APLConfiguration subclass must now be specified in the `Info.plist` item `APLConfigurationClass`. Swift `APLConfiguration` subclasses may use unicode characters.
* **SDK:** Appfigurate Library no longer supports swizzling `UIApplicationDelegate` or `WKExtensionDelegate`. Instead you must programmatically call `APLApplicationDidFinishLaunchingWithOptions`, `APLApplicationDidFinishLaunching` and `APLApplicationOpenURL` at the appropriate times.
* **SDK:** `APLConfiguration` subclass properties and executable actions can now be marked as requiring an app restart when they change.
* **SDK:** Appfigurate Library now works correctly inside applications that use `UIWindowScene`.
* **SDK:** Appfigurate in conjunction with Appfigurate Library can automatically restart your app when restartable properties have changed.
* **App:** Restart required properties and executable actions are now indicated in the UI with a green refresh icon (↩).
* **App:** Install example app metadata for easier testing of included SDK example apps (≡ ‣ Install example apps).
* **App:** Output `UIWindowSceneDelegate` snippets for easier integration. (≡ ‣ *App* ‣ Output UIWindowSceneDelegate snippet).
* **App:** Companion [AppfigurateSE macOS app](https://apps.apple.com/us/app/appfiguratese/id1466929147?ls=1&mt=12) updated to automatically generate encrypted string list items for both Objective-C and Swift `APLConfiguration` subclasses.

#### 1.4.0 21 December 2019

* **Xcode:** 10.1+, **Minimum deployment target:** iOS 8.0, watchOS 3.0
* **App:** Support for iOS 13 Dark Mode.
* **SDK:** Added ability to execute custom actions declared in an `APLConfiguration` subclass. Check API documentation for [ACTION_METHOD](https://www.electricbolt.co.nz/api/) macro.

#### 1.3.1 6 October 2019

* **Xcode:** 10.1+, **Minimum deployment target:** iOS 8.0, watchOS 3.0
* **App:** Minor fixes to UI for iOS 13 compatibility.

#### 1.3.0 27 August 2019

* **Xcode:** 10.1+, **Minimum deployment target:** iOS 8.0, watchOS 3.0
* **App:** Share app metadata quickly using Multipeer connectivity. (≡ ‣ Import apps ‣ Multipeer).
* **App:** The shared Simulator database stored in `~/Library/Application Support/Appfigurate` is upgraded to 1.3.0 and is incompatible with <= 1.2.1. Please ensure you upgrade Appfigurate to 1.3.0 in all Simulators you use.
* **App:** Output Swift implementation (≡ ‣ *[App name]* ‣ Output Swift implementation).
* **App:** Non-exportable app metadata will now expire after 180 days from installation.
* **App:** Removed ability to perform remote apply of configuration using non-exportable app metadata.
* **App:** Conversion of exportable app metadata to non-exportable app metadata. Use with caution as this action cannot be undone. (≡ ‣ *[App name]* ‣ Exportable switch).
* **App:** Custom list item screen improvements.
* **App:** Refreshed look and feel.
* **SDK:** StringEncryption macOS app removed and replaced with [AppfigurateSE app, available on macOS App Store](https://apps.apple.com/us/app/appfiguratese/id1466929147?ls=1&mt=12). Includes source editor extension for Xcode to automatically generate encrypted string list items (currently Objective-C only).
* **SDK:** Reformatted [API documentation](https://www.electricbolt.co.nz/api/) available.
* **SDK:** Library now throws an NSException (only when `allowInvalidSignatures` return `YES`, e.g. Debug builds) in the following scenarios: Invalid APLKeychainAccessibility value, Invalid configuration after reset method, Invalid list values found not conforming to regex.

#### 1.2.1 22 May 2019

* **Xcode:** 10.1+, **Minimum deployment target:** iOS 8.0, watchOS 3.0
* **SDK only:** Added `APLSaveConfiguration()` and `APLRestoreConfiguration()` to save and restore keychain.

#### 1.2.0 28 Mar 2019

* **Xcode:** 9.0+, **Minimum deployment target:** iOS 8.0, watchOS 3.0
* **App:** Minor bug fixes.
* **App:** Share app metadata quickly using QR codes. Scanning requires a device running iOS 11.0+ (≡ ‣ Import apps ‣ QR code).
* **SDK:** Support for encrypted string list items using the `ENCRYPTED_STRING_PROPERTY_LIST_EDIT`, `ENCRYPTED_STRING` and `ENCRYPTED_STRING_IOS_WATCHOS` macros.
* **SDK:** Use the new StringEncryption macOS app to generate the encrypted string list item values.

#### 1.1.3 10 Feb 2019

* **Xcode:** 9.0+, **Minimum deployment target:** iOS 8.0, watchOS 3.0
* **App:** Minor bug fixes.
* **SDK:** Added `APLAddConfigurationUpdatedBlock()` and `APLRemoveConfigurationUpdatedBlock()` functions to complement the existing delegate based callbacks. 
* **SDK:** `APLConfiguration` subclass is now instantiated earlier, allowing it to be accessed from within `+load` methods and `__attribute__((constructor))` functions.

#### 1.1.2 17 Jan 2019

* **Xcode:** 9.0+, **Minimum deployment target:** iOS 8.0, watchOS 3.0
* **App:** Automatic notification of new releases.
* **SDK:** Bug fixes.

#### 1.1.1 16 Dec 2018

* **Xcode:** 9.0+, **Minimum deployment target:** iOS 8.0, watchOS 3.0
* **SDK:** Support for arm64_32 architecture (Apple Watch series 4) in Appfigurate Library.
* **SDK:** Fix missing Watch Extension icon.

#### 1.1.0 12 Sep 2018

* **Xcode:** 9.0+, **Minimum deployment target:** iOS 8.0, watchOS 3.0
* **SDK:** Support for watchOS app intent extensions (e.g. SiriKit)

#### 1.0.1 9 Feb 2018

* **Xcode:** 8.0, **Minimum deployment target:** iOS 8.0, watchOS 3.0
* **App:** Device builds have optional PIN/TouchID/FaceID authentication.

#### 1.0.0 17 Jan 2018

* **Xcode:** 8.0+, **Minimum deployment target:** iOS 8.0, watchOS 3.0
* Initial public release.
