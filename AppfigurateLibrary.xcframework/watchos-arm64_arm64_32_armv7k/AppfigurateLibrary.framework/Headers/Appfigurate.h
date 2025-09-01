// Appfigurate.h
// Appfigurate™ Copyright© 2013-2025; Electric Bolt Limited.

#import <Foundation/Foundation.h>
#if TARGET_OS_IOS
#import <UIKit/UIKit.h>
#endif

// For API doc generation only.
#if DOC_APPFIGURATE
#define TARGET_OS_IOS 1
#define TARGET_OS_WATCH 1
#endif

//----------------------------------------------------------------------------------------------------------------------

// MARK: Constants

/**
 NSException of name `AppfigurateLibraryException` thrown in the following scenarios in order to terminate the app when
 a fatal error occurs:
 - Invalid list values found.
 - Invalid APLKeychainAccessibility value '%@' in Info.plist.
 - Invalid configuration after reset method.
 - APLConfiguration subclass not found.
 - Missing application launch scheme CFBundleURLName/CFBundleURLSchemes in Info.plist.
 - Invalid APLLogging value '%@' in Info.plist.
 - The allowInvalidSignatures method must be overridden.
 - The reset method must be overridden.
 - The publicKey method must be overridden.
 */
extern NSString* _Nonnull AppfigurateLibraryException;

/**
 NSNotification.userInfo key for use in `APLConfigurationUpdated` or `APLConfigurationUpdatedBlock` callback.
 */
extern NSString* _Nonnull APLConfigurationUpdatedAction;

//----------------------------------------------------------------------------------------------------------------------

// MARK: APLIconSlider enumeration

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._
 
 The graphical icons to be displayed for any configuration properties that are implemented using any of the
 `INT_PROPERTY_SLIDER`, `FLOAT_PROPERTY_SLIDER`, `DOUBLE_PROPERTY_SLIDER` Objective-C macros or `IntPropertySlider`,
 `FloatPropertySlider`, `DoublePropertySlider` Swift property wrappers.
 
 __Objective-C example__
 
 ```objc
 FLOAT_PROPERTY_SLIDER(speakerVolume, 0.0, 1000.0, APLIconSliderVolume, @"Speaker loudness", NO);
 ```
 
 __Swift example__
 
 ```swift
 @FloatPropertySlider(min: 0.0, max: 1000.0, icon: .volume, description: "Speaker loudness", restart: false)
 var speakerVolume: Float
 ```
 */

typedef NS_ENUM(NSInteger, APLIconSlider) {
    /// Tortise, Hare icon
    APLIconSliderSpeed,
    /// Battery icon
    APLIconSliderCapacity,
    /// 0/1 icon
    APLIconSliderNumeric,
    /// Brightness icon
    APLIconSliderBrightness,
    /// Speaker icon
    APLIconSliderVolume
};

/**
 The `propertyType` parameter in the `APLFetchRemoteConfiguration` function indicates both the type of the
 `defaultValue` parameter and the expected result of the block.
 */

typedef NS_ENUM(NSInteger, APLRemotePropertyType) {
    /// BOOL (Objective-C), Bool (Swift)
    APLRemotePropertyTypeBool,
    /// NSInteger (Objective-C), Int (Swift)
    APLRemotePropertyTypeInt,
    /// double (Objective-C), Double (Swift)
    APLRemotePropertyTypeDouble,
    /// NSString (Objective-C), String (Swift)
    APLRemotePropertyTypeString
};

//------------------------------------------------------------------------------

// MARK: Custom executable actions

#define ACTION_METHOD(actionName, description, restart) \
- (NSString*) actionName##Description { \
    return description; \
} \
- (BOOL) actionName##Restart { \
    return restart; \
} \
- (void) actionName##Action

//----------------------------------------------------------------------------------------------------------------------

// MARK: BOOL

// `BOOL` property switch. For Swift see `BoolProperty` property wrapper.

#define BOOL_PROPERTY(propertyName, description, restart) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// Remote `BOOL` property switch. For Swift see `RemoteBoolProperty` property wrapper.

#define REMOTE_BOOL_PROPERTY(propertyName, propertyKey, description) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSString*) propertyName##Key { \
    return propertyKey; \
}

// MARK: NSInteger

// `NSInteger` property slider. For Swift see `IntPropertySlider` property wrapper.

#define INT_PROPERTY_SLIDER(propertyName, minValue, maxValue, icon, description, restart) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSInteger) propertyName##Min { \
    return minValue; \
} \
- (NSInteger) propertyName##Max { \
    return maxValue; \
} \
- (APLIconSlider) propertyName##Icon { \
    return icon; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// `NSInteger` property edit field. For Swift see `IntPropertyEdit` property wrapper.

#define INT_PROPERTY_EDIT(propertyName, minValue, maxValue, regex, description, restart) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSInteger) propertyName##Min { \
    return minValue; \
} \
- (NSInteger) propertyName##Max { \
    return maxValue; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// `NSInteger` property list. For Swift see `IntPropertyList` property wrapper.

#define INT_PROPERTY_LIST(propertyName, description, restart, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// `NSInteger` property list and edit field. For Swift see `IntPropertyListEdit` property wrapper.

#define INT_PROPERTY_LIST_EDIT(propertyName, minValue, maxValue, regex, description, restart, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSInteger) propertyName##Min { \
    return minValue; \
} \
- (NSInteger) propertyName##Max { \
    return maxValue; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// Remote `NSInteger` property edit field. For Swift see `RemoteIntPropertyEdit` property wrapper.

#define REMOTE_INT_PROPERTY_EDIT(propertyName, propertyKey, description) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSString*) propertyName##Key { \
    return propertyKey; \
}

// MARK: float

// `float` property slider. For Swift see `FloatPropertySlider` property wrapper.

#define FLOAT_PROPERTY_SLIDER(propertyName, minValue, maxValue, icon, description, restart) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (float) propertyName##Min { \
    return minValue; \
} \
- (float) propertyName##Max { \
    return maxValue; \
} \
- (APLIconSlider) propertyName##Icon { \
    return icon; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// `float` property edit field. For Swift see `FloatPropertyEdit` property wrapper.

#define FLOAT_PROPERTY_EDIT(propertyName, minValue, maxValue, regex, description, restart) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (float) propertyName##Min { \
    return minValue; \
} \
- (float) propertyName##Max { \
    return maxValue; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// `float` property list. For Swift see `FloatPropertyList` property wrapper.

#define FLOAT_PROPERTY_LIST(propertyName, description, restart, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// `float` property list and edit field. For Swift see `FloatPropertyListEdit` property wrapper.

#define FLOAT_PROPERTY_LIST_EDIT(propertyName, minValue, maxValue, regex, description, restart, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (float) propertyName##Min { \
    return minValue; \
} \
- (float) propertyName##Max { \
    return maxValue; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// MARK: double

// `double` property slider. For Swift see `DoublePropertySlider` property wrapper.

#define DOUBLE_PROPERTY_SLIDER(propertyName, minValue, maxValue, icon, description, restart) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (double) propertyName##Min { \
    return minValue; \
} \
- (double) propertyName##Max { \
    return maxValue; \
} \
- (APLIconSlider) propertyName##Icon { \
    return icon; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// `double` property edit field. For Swift see `DoublePropertyEdit` property wrapper.

#define DOUBLE_PROPERTY_EDIT(propertyName, minValue, maxValue, regex, description, restart) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (double) propertyName##Min { \
    return minValue; \
} \
- (double) propertyName##Max { \
    return maxValue; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// `double` property list. For Swift see `DoublePropertyList` property wrapper.

#define DOUBLE_PROPERTY_LIST(propertyName, description, restart, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// `double` property list and edit field. For Swift see `DoublePropertyListEdit` property wrapper.

#define DOUBLE_PROPERTY_LIST_EDIT(propertyName, minValue, maxValue, regex, description, restart, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (double) propertyName##Min { \
    return minValue; \
} \
- (double) propertyName##Max { \
    return maxValue; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// Remote `double` property edit field. For Swift see `RemoteDoublePropertyEdit` property wrapper.

#define REMOTE_DOUBLE_PROPERTY_EDIT(propertyName, propertyKey, description) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSString*) propertyName##Key { \
    return propertyKey; \
}

// MARK: NSString

// `NSString` property edit field. For Swift see `StringPropertyEdit` property wrapper.

#define STRING_PROPERTY_EDIT(propertyName, regex, description, restart) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// `NSString` property list. For Swift see `StringPropertyList` property wrapper.

#define STRING_PROPERTY_LIST(propertyName, description, restart, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// `NSString` property list and edit field. For Swift see `StringPropertyListEdit` property wrapper.

#define STRING_PROPERTY_LIST_EDIT(propertyName, regex, description, restart, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// Remote `String` property. For Swift see `RemoteStringPropertyEdit` property wrapper.

#define REMOTE_STRING_PROPERTY_EDIT(propertyName, propertyKey, description) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSString*) propertyName##Key { \
    return propertyKey; \
}

// MARK: Encrypted NSString

// Encrypted `NSString` property list and edit field. For Swift see `EncryptedStringPropertyListEdit` property wrapper.

#if DEBUG
#define ENCRYPTED_STRING_PROPERTY_LIST_EDIT(propertyName, regex, description, restart, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}
#else
#define ENCRYPTED_STRING_PROPERTY_LIST_EDIT(propertyName, regex, description, restart, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
} \
- (BOOL) propertyName##Encrypted { \
    return YES; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}
#endif

//----------------------------------------------------------------------------------------------------------------------

// For DEBUG builds, the plaintext string is expanded. For non-DEBUG builds, the encrypted string is expanded. For
// Swift, see the `ENCRYPTED_STRING` global function.

#if DEBUG
#define ENCRYPTED_STRING(plaintext, encrypted) plaintext
#else
#define ENCRYPTED_STRING(plaintext, encrypted) encrypted
#endif

//----------------------------------------------------------------------------------------------------------------------

// MARK: APLConfigurationUpdated

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._
 
 The protocol used by the `APLAddConfigurationUpdatedListener` function.
 */
@protocol APLConfigurationUpdated

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._
 
 Called when the configuration has been updated or reset by Appfigurate. If the notification was generated by an action
 being executed then `notification.userInfo[APLConfigurationUpdatedAction]` will be a `NSString*` of the action name. If
 the notification was generated by configuration being updated or reset, then `notification.userInfo` will be `nil`.
 
 __Objective-C example__
 
 ```objc
 - (void) configurationUpdated: (NSNotification*) notification {
   [self.tableView reloadData];
 }
 ```
 
 __Swift example__
 
 ```swift
 func configurationUpdated(_ notification: Notification?) {
   self.tableView.reloadData()
 }
 ```
 */
- (void) configurationUpdated: (NSNotification* _Nullable) notification;

@end

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._
 
 The block used by the `APLAddConfigurationUpdatedBlock()` function. If the notification was generated by an action
 being executed then `notification.userInfo[APLConfigurationUpdatedAction]` will be a `NSString*` of the action name. If
 the notification was generated by configuration being updated or reset, then `notification.userInfo` will be `nil`.
 */
typedef void (^APLConfigurationUpdatedBlock)(NSNotification* _Nullable note);

//----------------------------------------------------------------------------------------------------------------------

// MARK: APLConfiguration

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._
 
 Subclass `APLConfiguration` and declare/implement properties to be configured using the Appfigurate app (Simulator or
 App Store) with the `BOOL_PROPERTY`, `INT_PROPERTY_XXXX`, `FLOAT_PROPERTY_XXXX`, `DOUBLE_PROPERTY_XXXX`,
 `STRING_PROPERTY_XXXX`, `ENCRYPTED_STRING_PROPERTY_LIST_EDIT`, `REMOTE_BOOL_PROPERTY_EDIT`, `REMOTE_INT_PROPERTY_EDIT`,
 `REMOTE_DOUBLE_PROPERTY_EDIT` or `REMOTE_STRING_PROPERTY_EDIT` macros (Objective-C) or `@BoolProperty`,
 `@IntPropertyXXXX`, `@FloatPropertyXXXX`, `@StringPropertyXXXX`, `@EncryptedStringPropertyListEdit`,
 `@RemoteBoolProperty`, `@RemoteIntPropertyEdit`, `@RemoteDoublePropertyEdit` or `@RemoteStringPropertyEdit` property
 wrappers (Swift). You must override the `-[APLConfiguration publicKey]`, `-[APLConfiguration reset]` and
 `-[APLConfiguration allowInvalidSignatures]` methods.
 */
@interface APLConfiguration : NSObject

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._
 
 The singleton instance of the `APLConfiguration` subclass. The instance is automatically instantiated on application,
 extension or XCUITest bundle startup. It is permissible to have a multi-level class hierarchy if required.
 e.g. `AppConfiguration ‣ CommonConfiguration ‣ APLConfiguration`.
 */
+ (APLConfiguration* _Nonnull) sharedConfiguration;

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._
 
 Override to return the public key for this application. Use the Appfigurate app (Simulator or App Store) to output the
 public key.
 
 `AppfigurateLibraryException` will be thrown if you do not override this method.

 __Objective-C example (abbreviated)__
 
 ```objc
 - (NSString*) publicKey {
   // 41 36 87 71 0D 05
   return @"-----BEGIN PUBLIC KEY-----\n" \
     "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5s2YXfKStHzgUEkY+KDm\n" \
     ...
     "6QIDAQAB\n" \
     "-----END PUBLIC KEY-----\n";
 }
 ```
 
 __Swift example (abbreviated)__
 
 ```swift
 override func publicKey() -> String {
   // 41 36 87 71 0D 05
   return "-----BEGIN PUBLIC KEY-----\n" +
     "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5s2YXfKStHzgUEkY+KDm\n" +
     ...
     "6QIDAQAB\n" +
     "-----END PUBLIC KEY-----\n"
 }
 ```
 */
- (NSString* _Nonnull) publicKey;

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 Return YES if invalid digital signatures are allowed to apply configuration (Debug builds), or NO if only a correct
 digital signature is acceptable (Release builds).
 
 `AppfigurateLibraryException` will be thrown if you do not override this method.
   
 For Swift, ensure that `DEBUG` is defined in your:
 App target ‣ Build Settings ‣ Swift Compiler - Custom Flags ‣ Active Compilation Conditions for the Debug build
 configuration.
 
 __Objective-C example__
 
 ```objc
 - (BOOL) allowInvalidSignatures {
   #if DEBUG
     return YES;
   #else
     return NO;
   #endif
 }
 ```
 
 __Swift example__
 
 ```swift
 override func allowInvalidSignatures() -> Bool {
   #if DEBUG
     return true
   #else
     return false
   #endif
 }
 ```
 */
- (BOOL) allowInvalidSignatures;

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 Optionally override to return a list of environment tags in the order you want them to appear in a segmented control
 in Appfigurates "Configure app" screen. Environment tags are case insensitive.
  
 `AppfigurateLibraryException` will be thrown if there are environment tags specified in the values of
 `XXXX_PROPERTY_LIST`, `XXXX_PROPERTY_LIST_EDIT` macros (Objective-C) or `@XXXXPropertyList`, or `@XXXXPropertyListEdit`
 property wrappers (Swift) that are not returned in the list from this method.
   
 __Objective-C example__
 
 ```objc
 - (NSArray<NSString*>*) environmentTags {
   return @[@"Dev", @"Test", @"Prod"];
 }
 ```
 
 __Swift example__
 
 ```swift
 override func environmentTags() -> [String] {
   return ["Dev", "Test", "Prod"]
 }
 ```
 */
- (NSArray<NSString*>* _Nullable) environmentTags;

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._
 
 Returns the textual representation of all properties. Property names are shortened to camel case and appended with the
 value, except for `NSString*` properties which omit the property name. Example: `debugLog=5` would be returned as
 `DL=5`.
 */
- (NSString* _Nonnull) description;

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._
 
 Returns the textual representation of all local properties that have non default values, and all remote properties
 that are locally overridden that have non default values. Property names are shortened to camel case and appended with
 the non default value, except for `NSString*` properties which omit the property name. Example:
 `userInteractionTimeout=60.0` would be returned as `UIT=60.0`. See also `APLConfigurationLabel` class.
 */
- (NSString* _Nonnull) modifications;

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 Set default values into your properties. You should ensure that all reset values conform to minimum and maximum
 values, list entries and regular expressions. Any values that are non-conforming will be output to the console.
 
 `AppfigurateLibraryException` will be thrown if you do not override this method.

 __Objective-C example__
 
 ```objc
 - (void) reset {
   self.decibelLimit = 5.1;
   self.foregroundColorHex = @"fa3bcc";
 }
 ```
 
 __Swift example__
 
 ```swift
 override func reset() {
   decibelLimit = 5.1
   foregroundColorHex = "fa3bcc"
 }
 ```
 */
- (void) reset;

#if TARGET_OS_IOS

/**
 _Target availability: iOS apps, iOS app extensions._
 
 Returns a dictionary of remote properties default values as set in the `-[APLConfiguration reset]` method. Used when
 integrating with select third party remote configuration providers. See also `APLFetchRemoteConfiguration()`.
 
 __Objective-C Firebase Remote Config example__
 
 ```objc
 [self.remoteConfig setDefaults: [[APLConfiguation sharedConfiguration] remoteDefaults]];
 ```
 
 __Swift Firebase Remote Config example__
 
 ```swift
 remoteConfig.setDefaults(APLConfiguration.shared().remoteDefaults())
 ```

 __Objective-C Launch Darkly example__
 
 Not applicable for Launch Darkly.

 __Swift Launch Darkly example__
 
 Not applicable for Launch Darkly.
 */
- (NSDictionary<NSString*, NSObject*>* _Nonnull) remoteDefaults;

/**
 _Target availability: iOS XCUITest automation testing._
 
 Generates a string that can be passed as launch arguments to the app under test, to apply configuration.
 The `-[APLConfiguration allowInvalidSignatures]` method in the app under test must return `YES` for this configuration
 to be applied (e.g. a Debug build).
 
 __Objective-C example__
 
 ```obj-c
 - (void) setUp {
   [super setUp];
   Configuration* c = [Configuration new];
   c.webserviceURL = "https://localhost:443/api";
   XCUIApplication* app = [XCUIApplication new];
   app.launchArguments = [c automationLaunchArguments]; // Convert apply operation to launch arguments.
   [app launch];
 }
 ```
 
 __Swift example__
 
 ```swift
 func setUp() {
   super.setUp()
   let c = Configuration()
   c.webserviceURL = "https://localhost:443/api"
   let app = XCUIApplication()
   app.launchArguments = c.automationLaunchArguments() // Convert apply operation to launch arguments.
   app.launch()
 }
 ```
 */
- (NSArray<NSString*>* _Nonnull) automationLaunchArguments;

/**
 _Target availability: iOS XCUITest automation testing._
 
 Generates a string that can be passed as launch arguments to the app under test, to reset the configuration to
 defaults.
 
 __Objective-C example__
 
 ```objc
 - (void)setUp {
   [super setUp];
   Configuration* c = [Configuration new];
   XCUIApplication* app = [XCUIApplication new];
   app.launchArguments = [c automationLaunchArgumentsReset]; // Convert reset operation to launch arguments.
   [app launch];
 }
 ```
 
 __Swift example__
 
 ```swift
 func setUp() {
   super.setUp()
   let c = Configuration()
   let app = XCUIApplication()
   app.launchArguments = c.automationLaunchArgumentsReset() // Convert reset operation to launch arguments.
   app.launch()
 }
 ```
 */
- (NSArray<NSString*>* _Nonnull) automationLaunchArgumentsReset;

/**
 _Target availability: iOS XCUITest automation testing._
 
 Generates a string that can be passed as launch arguments to the app under test, to execute a custom action. The
 `-[APLConfiguration allowInvalidSignatures]` method in the app under test must return `YES` for this action to be
 executed (e.g. a Debug build). See also `-[APLConfiguration automationSendReadConfiguration]`.
 
 __Objective-C example__
 
 ```objc
 - (void)setUp {
   [super setUp];
   Configuration* c = [Configuration new];
   XCUIApplication* app = [XCUIApplication new];
   app.launchArguments = [c automationLaunchArgumentsWithAction: @"zeroLogs"]; // Convert execute action operation to launch arguments.
   [app launch];
 }
 ```
 
 __Swift example__
 
 ```swift
 func setUp() {
   super.setUp()
   let c = Configuration()
   let app = XCUIApplication()
   app.launchArguments = c.automationLaunchArguments(withAction: "zeroLogs") // Convert execute action operation to launch arguments.
   app.launch()
 }
 ```
 */
- (NSArray<NSString*>* _Nonnull) automationLaunchArgumentsWithAction: (NSString* _Nonnull) action;

/**
 _Target availability: iOS XCUITest automation testing._
 
 Applies this configuration to the app under test. The `-[APLConfiguration allowInvalidSignatures]` method in
 the app under test must return `YES` for this configuration to be applied (e.g. a Debug build). An
 `AppfigurateLibraryException` will be thrown after 10.0 seconds if the app under test fails to respond.
 
 __Objective-C example__
 
 ```obj-c
 - (void) testURL {
   XCUIApplication* app = [XCUIApplication new];
   [app launch];
   Configuration* c = [Configuration new];
   c.webserviceURL = "https://localhost:443/api"; // Change URL to mock server.
   [c automationSendConfiguration];               // Apply this configuration to the app under test.
   ...
 ```
 
 __Swift example__
 
 ```swift
 func testURL() {
   let app = XCUIApplication()
   app.launch()
   let c = Configuration()
   c.webServiceURL = "https://localhost:443/api" // Change URL to mock server.
   c.automationSendConfiguration()               // Apply this configuration to the app under test.
   ...
 ```
 */
- (void) automationSendConfiguration
NS_SWIFT_NAME(automationSendConfiguration());

/**
 _Target availability: iOS XCUITest automation testing._
 
 Resets the configuration to defaults in the app under test. The `-[APLConfiguration allowInvalidSignatures]` method in
 the app under test must return `YES` for this configuration to be reset (e.g. a Debug build). An
 `AppfigurateLibraryException` will be thrown after 10.0 seconds if the app under test fails to respond.
 
 __Objective-C example__
 
 ```obj-c
 - (void) testURL {
   XCUIApplication* app = [XCUIApplication new];
   [app launch];
   Configuration* c = [Configuration new];
   [c automationSendResetConfiguration]; Resets the configuration to defaults in the app under test.
   ...
 ```
 
 __Swift example__
 
 ```swift
 func testURL() {
   let app = XCUIApplication()
   app.launch()
 
   let c = Configuration()
   c.automationSendResetConfiguration() Resets the configuration to defaults in the app under test.
   ...
 ```
 */
- (void) automationSendConfigurationReset
NS_SWIFT_NAME(automationSendConfigurationReset());

/**
 _Target availability: iOS XCUITest automation testing._
 
 Execute a custom action in the app under test. The `-[APLConfiguration allowInvalidSignatures]` method in the app under
 test must return `YES` for this configuration to be applied (e.g. a Debug build). An `AppfigurateLibraryException` will
 be thrown after 10.0 seconds if the app under test fails to respond.
 
 __Objective-C example__
 
 ```obj-c
 - (void) testURL {
   XCUIApplication* app = [XCUIApplication new];
   [app launch];
 
   Configuration* c = [Configuration new];
   [c automationSendConfigurationWithAction: @"zeroLogs"]; // Execute a custom action in the app under test.
   ...
 ```
 
 __Swift example__
 
 ```swift
 func testURL() {
   let app = XCUIApplication()
   app.launch()
 
   let c = Configuration()
   c.debugLogging = true
   c.serverURL = "https://m.electricbolt.co.nz/test"
   c.automationSendConfiguration(withAction: "zeroLogs") // Execute a custom action in the app under test.
   ...
 ```
 */
- (void) automationSendConfigurationWithAction: (NSString* _Nonnull) action
NS_SWIFT_NAME(automationSendConfiguration(withAction:));

/**
 _Target availability: iOS XCUITest automation testing._
 
 Updates this configuration by reading the configuration from the app under test. The
 `-[APLConfiguration allowInvalidSignatures]` method in the app under test must return `YES` for this method to succeed
 (e.g. a Debug build). An `AppfigurateLibraryException` will be thrown after 10.0 seconds if the app under test fails to
 respond. You should use this method after `-[APLConfiguration automationLaunchArgumentsWithAction:]` if the action in
 the app under test changes property values.
 
 __Objective-C example__

 ```obj-c
 - (void) testURL {
   Configuration* c = [Configuration new];
   XCUIApplication* app = [XCUIApplication new];
   app.launchArguments = [c automationLaunchArgumentsWithAction: @"zeroLogs"];
   [app launch];
   [c automationSendReadConfiguration]; // Updates this configuration by reading the configuration from the app under test.
   ...
 ```
 
 __Swift example__
 
 ```swift
 func testURL() {
   super.setUp()
   let c = Configuration()
   let app = XCUIApplication()
   app.launchArguments = c.automationLaunchArgumentsWithAction("zeroLogs")
   app.launch()
   c.automationSendReadConfiguration() // Updates this configuration by reading the configuration from the app under test.
   ...
 ```
 */
- (void) automationSendReadConfiguration
NS_SWIFT_NAME(automationSendReadConfiguration());

#endif

@end

//----------------------------------------------------------------------------------------------------------------------

#if TARGET_OS_IOS

/**
 _Target availability: iOS apps.
 
 Displays overridden configuration in a vertical orientation. Once added to the the superview, you should use the center
 property to specify the labels coordinates. Uses the `-[APLConfiguration modifications]` method to compute the labels
 text.
 */
@interface APLConfigurationLabel : UILabel

/**
 Assign a block to be run when the label is tapped. This property is optional.
 */
@property (nonatomic,copy,nullable) dispatch_block_t labelTappedBlock;

@end

#endif

//----------------------------------------------------------------------------------------------------------------------

#if TARGET_OS_IOS
/**
 _Target availability: iOS apps._
 
 You must call `APLApplicationDidFinishLaunchingWithOptions()` in your app delegate's
 `application:didFinishLaunchingWithOptions:` method.
 
 __Objective-C example__
 
 ```objc
 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   APLApplicationDidFinishLaunchingWithOptions(launchOptions);
   return YES;
 }
 ```
 
 __Swift example__
 
 ```swift
 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
   APLApplicationDidFinishLaunchingWithOptions(launchOptions)
   return true
 }
 ```
 */
extern void APLApplicationDidFinishLaunchingWithOptions(NSDictionary* _Nullable launchOptions);

/**
 _Target availability: iOS apps._
  
 You must call `APLApplicationOpenURL()` in your app delegate's `application:openURL:options:` method.
 
 __Objective-C example__
 
 ```objc
 - (BOOL) application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
   return APLApplicationOpenURL(url);
 }
 ```
 
 __Swift example__
 
 ```swift
 func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
   return APLApplicationOpenURL(url)
 }
 ```
 */
extern BOOL APLApplicationOpenURL(NSURL* _Nonnull url);

#endif
#if TARGET_OS_WATCH

/**
 _Target availability: watchOS apps._
  
 You must call `APLApplicationDidFinishLaunching()` in your extension's delegate `applicationDidFinishLaunching` method.
 
 __Objective-C example__
 
 ```objc
 - (void) applicationDidFinishLaunching {
   APLApplicationDidFinishLaunching();
 }
 ```
 
 __Swift example__
 
 ```swift
 func applicationDidFinishLaunching() {
   APLApplicationDidFinishLaunching()
 }
 ```
 */
extern void APLApplicationDidFinishLaunching(void);

/**
 _Target availability: watchOS apps._
 
 Receives configuration commands and payloads from the paired iPhone's Appfigurate app.
 
 If your watch app has its own `WCSessionDelegate`, then call the `APLSessionDidReceiveMessage()` function from within
 your `session:didReceiveMessage:replyHandler:` method (see examples below). If your watch app _does not_ have its own
 `WCSessionDelegate` then you do not need to do anything - Appfigurate library installs a `WCSessionDelegate` and calls
 `APLSessionDidReceiveMessage()` automatically.
 
 __Objective-C example__
 
 ```objc
 - (void) session: (WCSession*) session didReceiveMessage: (NSDictionary<NSString*,id>*) message
    replyHandler: (void (^)(NSDictionary<NSString*,id>*)) replyHandler {
    NSDictionary* reply = APLSessionDidReceiveMessage(message);
    if (reply != nil)
        replyHandler(reply);
    else
       ...
 ```
 
 __Swift example__
 
 ```swift
 func session(_ session: WCSession, didReceiveMessage message: [String : Any], replyHandler: @escaping ([String : Any]) -> Void) {
   let reply = APLSessionDidReceiveMessage(message)
   if reply != nil {
     replyHandler(reply)
   } else {
     ...
 ```
 */
extern NSDictionary* _Nullable APLSessionDidReceiveMessage(NSDictionary<NSString*,id>* _Nonnull message);

#endif

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 Returns the version of the Appfigurate library in the format "major.minor.patch". e.g. "5.1.2"
 */
extern NSString* _Nonnull APLVersion(void);

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 Registers a delegate method that will be called back when Appfigurate has updated the configuration of the app or
 extension. See also `APLAddConfigurationUpdatedBlock()` function for block based callback.
 */
extern void APLAddConfigurationUpdatedListener(_Nonnull id<APLConfigurationUpdated> target);

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 Registers a block that will be called back when Appfigurate has updated the configuration of the app or extension.
 Returns an opaque object to act as the observer. See also `APLRemoveConfigurationUpdatedBlock()`.
 */
extern id<NSObject> _Nonnull APLAddConfigurationUpdatedBlock(_Nonnull APLConfigurationUpdatedBlock block);

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 Unregisters the delegate method that will be called back when Appfigurate has updated the configuration of the
 application. You may optionally call this method before the target is deallocated.
 */
extern void APLRemoveConfigurationUpdatedListener(_Nonnull id<APLConfigurationUpdated> target);

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 Unregisters the block that will be called back when Appfigurate has updated the configuration of the application. You
 must call this method before the block is deallocated. The observer argument is the result of
 `APLAddConfigurationUpdatedBlock()`.
 */
extern void APLRemoveConfigurationUpdatedBlock(_Nonnull id<NSObject> observer);

#if TARGET_OS_IOS
/**
 _Target availability: iOS apps._
 
 When integrating with third party remote configuration providers, you must specify a block that is called back whenever
 Appfigurate requires the current value of a third party remote configuration property. The block will be called for
 each `REMOTE_BOOL_PROPERTY`, `REMOTE_XXXX_PROPERTY_EDIT` macro (Objective-C) or `@RemoteBoolProperty`,
 `@RemoteXXXXPropertyEdit` property wrapper (Swift) you have specified in your APLConfiguration subclass.
 
 ```text
 REMOTE_BOOL_PROPERTY/@RemoteBoolProperty              ‣ APLRemotePropertyTypeBool   ‣ [NSNumber boolValue]    ‣ BOOL/Bool
 REMOTE_INT_PROPERTY_EDIT/@RemoteIntPropertyEdit       ‣ APLRemotePropertyTypeInt    ‣ [NSNumber integerValue] ‣ NSInteger/Int
 REMOTE_DOUBLE_PROPERTY_EDIT/@RemoteDoublePropertyEdit ‣ APLRemotePropertyTypeDouble ‣ [NSNumber doubleValue]  ‣ double/Double
 REMOTE_STRING_PROPERTY_EDIT/@RemoteStringPropertyEdit ‣ APLRemotePropertyTypeString ‣ NSString                ‣ NSString/String
 ```
 
 `propertyKey` is the name of the remote property in the third party provider's system.
 `propertyType` will be one of the `APLRemotePropertyType` enumerations indicating the exact type of the property.
 `defaultValue` will be the value specified by the subclasses `-[APLConfiguration reset]` method.
 
 __Objective-C Firebase Remote Config example__
 
 ```objc
 APLFetchRemoteConfiguration(^NSObject* (NSString* propertyKey, APLRemotePropertyType propertyType, NSObject* defaultValue) {
   if (propertyType == APLRemotePropertyTypeString) {
     return [self.remoteConfig configValueForKey: propertyKey].stringValue;
   } else if (propertyType == APLRemotePropertyTypeBool) {
     return [NSNumber numberWithBool: [self.remoteConfig configValueForKey: propertyKey].boolValue];
   } else // APLRemotePropertyTypeInt || APLRemotePropertyTypeDouble {
     return [self.remoteConfig configValueForKey: propertyKey].numberValue;
   }
 });
 ```
 
 __Swift Firebase Remote Config example__
 
 ```swift
 APLFetchRemoteConfiguration { propertyKey, propertyType, _ in
   if propertyType == .string {
     return self.remoteConfig.configValue(forKey: propertyKey).stringValue! as NSObject
   } else if propertyType == .bool {
     return self.remoteConfig.configValue(forKey: propertyKey).boolValue as NSObject
   } else { // .int || .double
     return self.remoteConfig.configValue(forKey: propertyKey).numberValue as NSObject
   }
 }
 ```

 __Objective-C Launch Darkly example__
 
 ```objc
 APLFetchRemoteConfiguration(^NSObject* (NSString* propertyKey, APLRemotePropertyType propertyType, NSObject* defaultValue) {
   if (propertyType == APLRemotePropertyTypeBool) {
     return [NSNumber numberWithBool: [[LDClient get] boolVariationForKey: propertyKey defaultValue: [((NSNumber*) defaultValue) boolValue]]];
   } else if (propertyType == APLRemotePropertyTypeInt) {
     return [NSNumber numberWithInteger: [[LDClient get] integerVariationForKey: propertyKey defaultValue: [((NSNumber*) defaultValue) integerValue]]];
   } else if (propertyType == APLRemotePropertyTypeDouble) {
     return [NSNumber numberWithDouble: [[LDClient get] doubleVariationForKey: propertyKey defaultValue: [((NSNumber*) defaultValue) doubleValue]]];
   } else {
     return [[LDClient get] stringVariationForKey: propertyKey defaultValue: (NSString*) defaultValue];
   }
 });
 ```
 
 __Swift Launch Darkly example__
 
 ```swift
 APLFetchRemoteConfiguration { propertyKey, propertyType, defaultValue in
   if propertyType == .bool {
     return NSNumber(value: (LDClient.get()!.boolVariation(forKey: propertyKey, defaultValue: (defaultValue as! NSNumber).boolValue)))
   } else if propertyType == .int {
     return NSNumber(value: (LDClient.get()!.intVariation(forKey: propertyKey, defaultValue: (defaultValue as! NSNumber).intValue)))
   } else if propertyType == .double {
     return NSNumber(value: (LDClient.get()!.doubleVariation(forKey: propertyKey, defaultValue: (defaultValue as! NSNumber).doubleValue)))
   } else {
     return NSString(string: LDClient.get()!.stringVariation(forKey: propertyKey, defaultValue: (defaultValue as! String)))
   }
 }
 ```
 */
extern void APLFetchRemoteConfiguration(NSObject* _Nonnull (^_Nullable)(NSString* _Nonnull propertyKey, APLRemotePropertyType propertyType, NSObject* _Nonnull defaultValue));

/**
 _Target availability: iOS apps._
 
 You must call the `APLFlushRemoteConfiguration()` function anytime your third party remote configuration provider
 has received & activated remote configuration. Forces the callback passed into `APLFetchRemoteConfiguration()` to be
 invoked to reload the new values of third party remote configuration properties.
 
 __Objective-C Firebase Remote Config example__

 ```objc
 [remoteConfig activateWithCompletion: ^(BOOL changed, NSError* error) {
   ...
   APLFlushRemoteConfiguration();
 }];
 ```
 
 __Swift Firebase Remote Config example__
 
 ```swift
 remoteConfig.activate { changed, error in
   ...
   APLFlushRemoteConfiguration()
 }
 ```
 
 __Objective-C Launch Darkly example__
 
 ```objc
 [LDClient startWithConfiguration:config context:context startWaitSeconds:5.0 completion:^(bool timedOut) {
   ...
   APLFlushRemoteConfiguration();
 }];

 [[LDClient get] observeAllKeysWithOwner: self handler:^(NSDictionary<NSString *,LDChangedFlag *> *handler) {
   ...
   APLFlushRemoteConfiguration();
 }];
 ```
 
 __Swift Launch Darkly example__
 
 ```swift
 LDClient.start(config: config, startWaitSeconds: 5.0) { timedOut in
   if !timedOut {
     ...
     APLFlushRemoteConfiguration()
   }
 }
 
 LDClient.get()?.observeAll(owner: self) { keys in
   ...
   APLFlushRemoteConfiguration()
 }
 ```
 */
extern void APLFlushRemoteConfiguration(void);
#endif

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 Saves the configuration persisted in the keychain into temporary storage. Some apps have functionality to erase the
 keychain to reset apps back to "factory defaults", which has the side effect of removing any Appfigurate configuration
 persisted in the keychain. Usage example:
 
 __Objective-C example__
 
 ```objc
 - (void) eraseKeychain {
   APLSaveConfiguration();
   NSArray* secItemClasses = @[(__bridge id) kSecClassGenericPassword,
     (__bridge id) kSecClassInternetPassword,
     (__bridge id) kSecClassCertificate,
     (__bridge id) kSecClassKey,
     (__bridge id) kSecClassIdentity];
   for (id secItemClass in secItemClasses) {
     NSDictionary *spec = @{(__bridge id)kSecClass: secItemClass};
     SecItemDelete((__bridge CFDictionaryRef)spec);
   }
   APLRestoreConfiguration();
 }
 ```
 */
extern void APLSaveConfiguration(void);

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 Restores the configuration from temporary storage back into the keychain. See also `APLSaveConfiguration()` for more
 details and usage example.
 */
extern void APLRestoreConfiguration(void);

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._
 
 The application or framework that links the static AppfigurateLibrary.xcframework must define a function with the
 following prototype that returns the `Class` (Objective-C) or `AnyClass` (Swift) of your `APLConfiguration` subclass.
 
 __Objective-C example__
 
 ```objc
 - (Class) _Nonnull APLConfigurationClass(void) {
   return [ExampleConfiguration class];
 }
 ```
 
 __Swift example__
 
 ```
 @_cdecl("APLConfigurationClass")
 func APLConfigurationClass() -> AnyClass {
   return ExampleConfiguration.self
 }
 ```
 */
extern Class _Nonnull APLConfigurationClass(void);

#if TARGET_OS_IOS
/**
 _Target availability: iOS XCUITest automation testing._
 
 Sends a message to the application under test, and waits for a response. You can only call this function from within
 an XCUITest automation test case. `name` is the message name, must not be `nil` or blank, maximum 255 bytes after
 encoding with UTF-8. `plist` is a property list object or `nil`. `timeout` is the duration in seconds you
 expect to receive a response, otherwise an `AppfigurateLibraryException` is thrown (minimum of 3.0 seconds).
 Returns a property list object or `nil` from the application under test.
 See also `APLAutomationMessageReceivedBlock()`.
 
 __Objective-C example__
 
 ```objc
 - (void) testLogin {
   XCUIApplication *app = [XCUIApplication new];
   [app launch];
     
   APLAutomationSendMessage(@"SetResponseData", @{
     @"Request": @"/login",
     @"Status": [NSNumber numberWithInt: 200],
     @"Response": @"{'Customer':'2311569'}"
   }, 3.0);
   ...
 ```
 
 __Swift example__
 
 ```swift
 func testLogin() {
   var app = XCUIApplication()
   app.launch
 
   APLAutomationSendMessage("SetResponseData", [
     "Request": "/login",
     "Status": 200,
     "Response": "{'Customer':'2311569'}"
   ], 3.0)
   ...
 ```
 */
extern id _Nullable APLAutomationSendMessage(NSString* _Nonnull name, id _Nullable plist, NSTimeInterval timeout);

/**
 _Target availability: iOS XCUITest automation testing._
 
 Register a single block (in the application under test) that will be invoked when an XCUITest automation test case has
 sent a message using the `APLAutomationSendMessage()` function. The `-[APLConfiguration allowInvalidSignatures]` method
 in the application under test must return `YES` for the message to be processed. See also `APLAutomationSendMessage()`.
 
 __Objective-C example__
 
 ```objc
 APLAutomationMessageReceivedBlock(^NSObject* (NSString* name, id data) {
   if ([name isEqualToString: @"SetResponseData"]) {
     [MockedHttpInterceptor setResponse: data];
   }
   return nil;
 });
 ```
 
 __Swift example__
 
 ```swift
 APLAutomationMessageReceivedBlock { (name: String, data: Any) -> NSObject in
   if name == "SetResponseData" {
     MockedHttpInterceptor.setResponse(data)
   }
   return nil
 }
 ```
 */
extern void APLAutomationMessageReceivedBlock(id _Nullable (^ _Nullable message)(NSString* _Nonnull name, id _Nullable data));
#endif

//----------------------------------------------------------------------------------------------------------------------

// MARK: Debug Logging

typedef NS_ENUM(NSInteger, APLLogLevel) {
    APLLogLevelDebug,
    APLLogLevelError,
    APLLogLevelFine,
};

#define APLDEBUG(msg, ...) APLLog(APLLogLevelDebug, msg, ##__VA_ARGS__)
#define APLERROR(msg, ...) APLLog(APLLogLevelError, msg, ##__VA_ARGS__)

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._
 
 If `logLevel` is `APLLogLevelDebug` and logging is enabled (see also `APLSetLogging()`) then logs `msg` with optional
 parameters to the console. If `logLevel` is `APLLogLevelError` then logs `msg` with optional
 parameters to the console even if logging is disabled. You should prefer to use APLDEBUG or APLERROR macros for
 Objective-C. See also `APLLogS()` for Swift.
 */
extern void APLLog(APLLogLevel logLevel, NSString* _Nonnull msg, ...);

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 If `logLevel` is `.debug` and logging is enabled (see also `APLSetLogging`) then logs `msg` to the console. If
 `logLevel` is `.error` then logs `msg` the console even if logging is disabled. See also `APLLog` for Objective-C.
 */
extern void APLLogS(APLLogLevel logLevel, NSString* _Nonnull msg);

/**
 _Target availability: iOS apps, iOS app extensions, watchOS apps, watchOS app extensions._

 When `YES`, Appfigurate library debugging messages will be output to the console. The default is `NO`. It is best
 practice to distribute applications via TestFlight and the App Store with logging set to `NO`. Also see `APLLogging`
 key in the `Info.plist` file.
 */
extern void APLSetLogging(BOOL logging);
