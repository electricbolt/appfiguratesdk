### Release History

#### 1.2.0 28 Mar 2019
* Requires Xcode 10.1+. As of 27 Mar 2019, [Apple requires all apps to use iOS 12.1 SDK](https://developer.apple.com/news/?id=03202019a).
* App update: Minor bug fixes.
* App update: Share app metadata quickly using QR codes (scanning requires a device running iOS 11.0+).
* SDK update: Support for encrypted string list items using the `ENCRYPTED_STRING_PROPERTY_LIST_EDIT`, `ENCRYPTED_STRING` and `ENCRYPTED_STRING_IOS_WATCHOS` macros.
* SDK update: Use the new StringEncryption macOS app to generate the encrypted string list item values.

#### 1.1.3 10 Feb 2019
* App update: Minor bug fixes.
* SDK update: Added `APLAddConfigurationUpdatedBlock()` and `APLRemoveConfigurationUpdatedBlock()` functions to complement the existing delegate based callbacks. 
* SDK update: `APLConfiguration` subclass is now instantiated earlier, allowing it to be accessed from within `+load` methods and `__attribute__((constructor))` functions.

#### 1.1.2 17 Jan 2019
* Automatic notification of new releases.
* Bug fixes.

#### 1.1.1 16 Dec 2018
* Support for arm64_32 architecture (Apple Watch series 4) in Appfigurate Library.
* Fix missing Watch Extension icon.

#### 1.1.0 12 Sep 2018
* Support for watchOS app intent extensions (e.g. SiriKit)
* Support for Xcode 10, drop support for Xcode 8

#### 1.0.1 9 Feb 2018
* Device builds have optional PIN/TouchID/FaceID authentication

#### 1.0.0 17 Jan 2018
* Initial public release, supports Xcode 8 and Xcode 9
