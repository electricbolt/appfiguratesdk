### Release History

#### 1.3.0 27 August 2019
* **App update:** Share app metadata quickly using Multipeer connectivity. (≡ ‣ Import apps ‣ Multipeer).
* **App update:** The shared Simulator database stored in `~/Library/Application Support/Appfigurate` is upgraded to 1.3.0 and is incompatible with <= 1.2.1. Please ensure you update Appfigurate to 1.3.0 in all Simulators you use.
* **App update:** Output Swift implementation (≡ ‣ *[App name]* ‣ Output Swift implementation).
* **App update:** Non-exportable app metadata will now expire after 180 days from installation.
* **App update:** Removed ability to perform remote apply of configuration using non-exportable app metadata.
* **App update:** Conversion of exportable app metadata to non-exportable app metadata. Use with caution as this action cannot be undone. (≡ ‣ *[App name]* ‣ Exportable switch).
* **App update:** Custom list item screen improvements.
* **App update:** Refreshed look and feel.
* **SDK update:** StringEncryption macOS app removed and replaced with [AppfigurateSE app, available on macOS App Store](https://apps.apple.com/us/app/appfiguratese/id1466929147?ls=1&mt=12). Includes source editor extension for Xcode to automatically generate encrypted string list items (currently Objective-C only).
* **SDK update:** Reformatted [API documentation](https://www.electricbolt.co.nz/api/) available.
* **SDK update:** Preliminary support for Xcode 11.0 (tested with beta 5).
* **SDK update:** Library now throws an NSException (only when `allowInvalidSignatures` return `YES`, e.g. Debug builds) in the following scenarios: Invalid APLKeychainAccessibility value, Invalid configuration after reset method, Invalid list values found not conforming to regex.

#### 1.2.1 22 May 2019
* **SDK update only:** Added `APLSaveConfiguration()` and `APLRestoreConfiguration()` to save and restore keychain.

#### 1.2.0 28 Mar 2019
* **SDK update:** Requires Xcode 10.1+. As of 27 Mar 2019, [Apple requires all apps to use iOS 12.1 SDK](https://developer.apple.com/news/?id=03202019a).
* **App update:** Minor bug fixes.
* **App update:** Share app metadata quickly using QR codes. Scanning requires a device running iOS 11.0+ (≡ ‣ Import apps ‣ QR code).
* **SDK update:** Support for encrypted string list items using the `ENCRYPTED_STRING_PROPERTY_LIST_EDIT`, `ENCRYPTED_STRING` and `ENCRYPTED_STRING_IOS_WATCHOS` macros.
* **SDK update:** Use the new StringEncryption macOS app to generate the encrypted string list item values.

#### 1.1.3 10 Feb 2019
* **App update:** Minor bug fixes.
* **SDK update:** Added `APLAddConfigurationUpdatedBlock()` and `APLRemoveConfigurationUpdatedBlock()` functions to complement the existing delegate based callbacks. 
* **SDK update:** `APLConfiguration` subclass is now instantiated earlier, allowing it to be accessed from within `+load` methods and `__attribute__((constructor))` functions.

#### 1.1.2 17 Jan 2019
* **App update:** Automatic notification of new releases.
* **SDK update:** Bug fixes.

#### 1.1.1 16 Dec 2018
* **SDK update:** Support for arm64_32 architecture (Apple Watch series 4) in Appfigurate Library.
* **SDK update:** Fix missing Watch Extension icon.

#### 1.1.0 12 Sep 2018
* **SDK update:** Support for watchOS app intent extensions (e.g. SiriKit)
* **SDK update:** Support for Xcode 10, drop support for Xcode 8

#### 1.0.1 9 Feb 2018
* **App update:** Device builds have optional PIN/TouchID/FaceID authentication

#### 1.0.0 17 Jan 2018
* Initial public release, supports Xcode 8 and Xcode 9
