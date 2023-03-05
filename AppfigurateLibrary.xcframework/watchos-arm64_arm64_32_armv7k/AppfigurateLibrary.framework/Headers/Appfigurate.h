/*******************************************************************************
 * Appfigurate.h                                                               *
 * Appfigurate™ Copyright© 2013; Electric Bolt Limited.                        *
 ******************************************************************************/

#import <Foundation/Foundation.h>
#if TARGET_OS_IOS
#import <UIKit/UIKit.h>
#endif

// For API doc generation only.
#if DOC_APPFIGURATE
#define TARGET_OS_IOS 1
#define TARGET_OS_WATCH 1
#endif

/**
 NSException thrown in the following scenarios in order to terminate the app
 when a fatal error occurs:
 - Invalid list values found not conforming to regex.
 - Invalid APLKeychainAccessibility value '%@' in Info.plist.
 - Invalid configuration after reset method.
 - APLConfiguration subclass not found.
 - Missing application launch scheme CFBundleURLName/CFBundleURLSchemes in Info.plist.
 - Invalid APLLogging value '%@' in Info.plist.
 - APLInstallDelegateMethods value in Info.plist is no longer required as Appfigurate Library no longer supports
   swizzling UIApplicationDelegate or WKExtensionDelegate.
 - APLConfigurationClass value in Info.plist has been replaced with APLConfigurationClass function.
 - APLAlwaysRealizeSwift value in Info.plist has been replaced with APLConfigurationClass function.
 */
extern NSString* _Nonnull AppfigurateLibraryException;


/**
 NSNotification.userInfo key for use in APLConfigurationUpdated or APLConfigurationUpdatedBlock callback.
 */
extern NSString* _Nonnull APLConfigurationUpdatedAction;

//------------------------------------------------------------------------------

/**
 **Availability: All.**
 
 The graphical icons to be displayed for any configuration properties that are implemented using
 any of the `INT_PROPERTY_SLIDER`, `FLOAT_PROPERTY_SLIDER`, `DOUBLE_PROPERTY_SLIDER` Objective-C
 macros or IntPropertySlider, FloatPropertySlider, DoublePropertySlider Swift property wrappers.
 
 > Objective-C example
 
 ```objc
 FLOAT_PROPERTY_SLIDER(speakerVolume, 0.0, 1000.0, APLIconSliderVolume, @"Speaker loudness", NO);
 ```
 
 > Swift example
 
 ```swift
 @FloatPropertySlider(min: 0.0, max: 1000.0, icon: .volume, description: "Speaker loudness", restart: false)
 @objc var speakerVolume: Float
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

//------------------------------------------------------------------------------

#define ACTION_METHOD(actionName, description, restart) \
- (NSString*) actionName##Description { \
    return description; \
} \
- (BOOL) actionName##Restart { \
    return restart; \
} \
- (void) actionName##Action

//------------------------------------------------------------------------------

// * BOOL *

// BOOL property. For Swift see BoolProperty property wrapper.
#define BOOL_PROPERTY(propertyName, description, restart) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (BOOL) propertyName##Restart { \
    return restart; \
}

// * NSInteger *

// NSInteger property slider. For Swift see IntPropertySlider property wrapper.
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

// NSInteger property edit field. For Swift see IntPropertyEdit property wrapper.
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

// NSInteger property list. For Swift see IntPropertyList property wrapper.
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

// NSInteger property list and edit field. For Swift see IntPropertyListEdit property wrapper.
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

// * float *

// float property slider. For Swift see FloatPropertySlider property wrapper.
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

// float property edit field. For Swift see FloatPropertyEdit property wrapper.
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

// float property list. For Swift see FloatPropertyList property wrapper.
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

// float property list and edit field. For Swift see FloatPropertyListEdit property wrapper.
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

// * double *

// double property slider. For Swift see DoublePropertySlider property wrapper.
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

// double property edit field. For Swift see DoublePropertyEdit property wrapper.
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

// double property list. For Swift see DoublePropertyList property wrapper.
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

// double property list and edit field. For Swift see DoublePropertyListEdit property wrapper.
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

// * NSString *

// NSString property edit field. For Swift see StringPropertyEdit property wrapper.
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

// NSString property list. For Swift see StringPropertyList property wrapper.
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

// NSString property list and edit field. For Swift see StringPropertyListEdit property wrapper.
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

// Encrypted NSString property list and edit field. For Swift see EncryptedStringPropertyListEdit property wrapper.
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

//------------------------------------------------------------------------------

// For an APLConfiguration subclass that has iOS and/or watchOS targets
// using a shared public key. For DEBUG builds, the plaintext string is expanded.
// For non-DEBUG builds, the encrypted string is expanded.
// For Swift, see the ENCRYPTED_STRING() global function.
#if DEBUG
#define ENCRYPTED_STRING(plaintext, encrypted) plaintext
#else
#define ENCRYPTED_STRING(plaintext, encrypted) encrypted
#endif

// For an APLConfiguration subclass that has iOS and watchOS targets
// using different public keys. For DEBUG builds, the plaintext string is
// expanded. For non-DEBUG iOS builds, the encryptedIOS string is expanded.
// For non-DEBUG watchOS builds, the encryptedWatchOS string is expanded.
// For Swift, see the ENCRYPTED_STRING_IOS_WATCHOS() global function.
#if DEBUG
#define ENCRYPTED_STRING_IOS_WATCHOS(plaintext, encryptedIOS, encryptedWatchOS) plaintext
#else
#if TARGET_OS_IOS
#define ENCRYPTED_STRING_IOS_WATCHOS(plaintext, encryptedIOS, encryptedWatchOS) encryptedIOS
#elif TARGET_OS_WATCH
#define ENCRYPTED_STRING_IOS_WATCHOS(plaintext, encryptedIOS, encryptedWatchOS) encryptedWatchOS
#endif
#endif

//------------------------------------------------------------------------------

/**
 **Availability: All.**
 
 The protocol used by the `APLAddConfigurationUpdatedListener()` function.
 */
@protocol APLConfigurationUpdated

/**
 **Availability: All.**
 
 Called when the configuration has been updated or reset by Appfigurate. If the
 notification was generated by an action being executed then
 notification.userInfo[APLConfigurationUpdatedAction] will be a NSString of
 the action name. If the notification was generated by configuration being
 updated or reset, then notification.userInfo will be nil.
 
 > Objective-C example
 
 ```objc
 - (void) configurationUpdated: (NSNotification*) notification {
   [self.tableView reloadData];
 }
 ```
 
 > Swift example
 
 ```swift
 func configurationUpdated(_ notification: Notification?) {
   self.tableView.reloadData()
 }
 ```
 */
- (void) configurationUpdated: (NSNotification* _Nullable) notification;

@end

/**
 **Availability: All.**
 
 The block used by the APLAddConfigurationUpdatedBlock function. If the
 notification was generated by an action being executed then
 notification.userInfo[APLConfigurationUpdatedAction] will be a NSString of
 the action name. If the notification was generated by configuration being
 updated or reset, then notification.userInfo will be nil.
 */
typedef void (^APLConfigurationUpdatedBlock)(NSNotification* _Nullable note);

//------------------------------------------------------------------------------

/**
 **Availability: All.**
 
 Subclass `APLConfiguration` and declare and implement properties to configure using the Appfigurate app (Simulator or
 App Store) with the `BOOL_PROPERTY`, `INT_PROPERTY_`, `FLOAT_PROPERTY_`, `DOUBLE_PROPERTY_`, `STRING_PROPERTY_` or
 `ENCRYPTED_STRING_PROPERTY_` macros (Objective-C) or `@BoolProperty`, `@IntProperty_`, `@FloatProperty_`,
 `@StringProperty_` or `@EncryptedString_` property wrappers (Swift). You must override the
 `-[APLConfiguration publicKey]` method.
 */
@interface APLConfiguration : NSObject

/**
 **Availability: All.**
 
 The singleton instance of the `APLConfiguration` subclass. The instance is automatically instantiated on application,
 extension or XCUITest bundle startup. It is permissible to have a multi-level class hierarchy if required.
 e.g. `AppConfiguration ‣ CommonConfiguration ‣ APLConfiguration`.
 */
+ (APLConfiguration* _Nonnull) sharedConfiguration;

/**
 **Availability: All.**
 
 Override to return the public key for this application. Use the Appfigurate app (Simulator or App Store) to output the
 public key(s).
 
 > Objective-C example

 ```objc
 - (NSString*) publicKey {
 #if TARGET_OS_IOS
   return @"-----BEGIN PUBLIC KEY-----\n" \
     "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5s2YXfKStHzgUEkY+KDm\n" \
     "yQUMO617+xo2tv5DF4M38emK7XpLR/ILLFiAiIHyRAdw9+wB80OEzek+bihwHWCs\n" \
     "WU0inAJ7gBLRqv7MHhPP4+XBbeizpLblPdBVVL1az5I3oDptpemIikAZrA37ZAH/\n" \
     "shk9C/wGogiQC4p60LmxbzI/+eYvI2x0M/Xxxpedcq6yRyHb+u+0ziNHoji5M6Qh\n" \
     "kcsailsMqANaN7VcO5NLPT3PzIc6WPG3iVJ0I8iCzXY/QNxOAtWc5t4CyB8+Z+fU\n" \
     "IEk9qAYiidZhpPb1gdJl4LN14qjBqYAmmJAo9oAabujlGmvxKQfR3Mj1FDd1GYab\n" \
     "6QIDAQAB\n" \
     "-----END PUBLIC KEY-----\n";
 #elif TARGET_OS_WATCH
   return @"-----BEGIN PUBLIC KEY-----\n" \
     "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5s2YXfKStHzgUEkY+KDm\n" \
     "yQUMO617+xo2tv5DF4M38emK7XpLR/ILLFiAiIHyRAdw9+wB80OEzek+bihwHWCs\n" \
     "WU0inAJ7gBLRqv7MHhPP4+XBbeizpLblPdBVVL1az5I3oDptpemIikAZrA37ZAH/\n" \
     "shk9C/wGogiQC4p60LmxbzI/+eYvI2x0M/Xxxpedcq6yRyHb+u+0ziNHoji5M6Qh\n" \
     "kcsailsMqANaN7VcO5NLPT3PzIc6WPG3iVJ0I8iCzXY/QNxOAtWc5t4CyB8+Z+fU\n" \
     "IEk9qAYiidZhpPb1gdJl4LN14qjBqYAmmJAo9oAabujlGmvxKQfR3Mj1FDd1GYab\n" \
     "6QIDAQAB\n" \
     "-----END PUBLIC KEY-----\n";
 #endif
 }
 ```
 
 > Swift example

 ```swift
 @objc override func publicKey() -> String {
 #if os(iOS)
   return "-----BEGIN PUBLIC KEY-----\n" +
     "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5s2YXfKStHzgUEkY+KDm\n" +
     "yQUMO617+xo2tv5DF4M38emK7XpLR/ILLFiAiIHyRAdw9+wB80OEzek+bihwHWCs\n" +
     "WU0inAJ7gBLRqv7MHhPP4+XBbeizpLblPdBVVL1az5I3oDptpemIikAZrA37ZAH/\n" +
     "shk9C/wGogiQC4p60LmxbzI/+eYvI2x0M/Xxxpedcq6yRyHb+u+0ziNHoji5M6Qh\n" +
     "kcsailsMqANaN7VcO5NLPT3PzIc6WPG3iVJ0I8iCzXY/QNxOAtWc5t4CyB8+Z+fU\n" +
     "IEk9qAYiidZhpPb1gdJl4LN14qjBqYAmmJAo9oAabujlGmvxKQfR3Mj1FDd1GYab\n" +
     "6QIDAQAB\n" +
     "-----END PUBLIC KEY-----\n"
 #elseif os(watchOS)
   return @"-----BEGIN PUBLIC KEY-----\n" \
     "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5s2YXfKStHzgUEkY+KDm\n" +
     "yQUMO617+xo2tv5DF4M38emK7XpLR/ILLFiAiIHyRAdw9+wB80OEzek+bihwHWCs\n" +
     "WU0inAJ7gBLRqv7MHhPP4+XBbeizpLblPdBVVL1az5I3oDptpemIikAZrA37ZAH/\n" +
     "shk9C/wGogiQC4p60LmxbzI/+eYvI2x0M/Xxxpedcq6yRyHb+u+0ziNHoji5M6Qh\n" +
     "kcsailsMqANaN7VcO5NLPT3PzIc6WPG3iVJ0I8iCzXY/QNxOAtWc5t4CyB8+Z+fU\n" +
     "IEk9qAYiidZhpPb1gdJl4LN14qjBqYAmmJAo9oAabujlGmvxKQfR3Mj1FDd1GYab\n" +
     "6QIDAQAB\n" +
     "-----END PUBLIC KEY-----\n"
 #endif
 }
 ```
 */
- (NSString* _Nonnull) publicKey;

/**
 **Availability: All.**

 Override if required. Return YES if invalid digital signatures are allowed to apply configuration, or NO
 if only a correct digital signature is acceptable.
 
 It is best practice to make Release builds only allow correct digital signatures.
 
 If you do not override this method, the default implementation of `allowInvalidSignatures` is as follows:
 - for Simulator builds, always returns YES.
 - for Device builds, returns YES if the embedded entitlements file has get-task-allow = true, otherwise
   returns NO. (Release builds distributed through the App Store, Testflight, Ad Hoc or Enterprise will
   always have get-task-allow = false).
 
 For Swift, ensure that `DEBUG` is defined in your:
   App target ‣ Build Settings ‣ Swift Compiler - Custom Flags ‣ Active Compilation Conditions
 for the Debug build configuration.
  
 > Objective-C example

 ```objc
 - (BOOL) allowInvalidSignatures {
 #if DEBUG
    return YES;
 #else
    return NO;
 #endif
 }
 ```
 
 > Swift example
 
 ```swift
 @objc override func allowInvalidSignatures() -> Bool {
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
 **Availability: All.**

 Returns the textual representation of all properties. Property names are shortened to camel case and appended with the
 value, except for NSString properties which omit the property name. Example: debugLog=5 would be returned as "DL=5".
 */
- (NSString* _Nonnull) description;

/**
 **Availability: All.**

 Returns the textual representation of all properties that have non default values. Property names are shortened to
 camel case and appended with the non default value, except for NSString properties which omit the property name.
 Example: userInteractionTimeout=60.0 would be returned as "UIT=60.0".
 */
- (NSString* _Nonnull) modifications;

/**
 **Availability: All.**

 Override if required to set default values into your properties. By default, sets properties as follows: NSString/String=nil,
 NSInteger/Int=0, float=0.0, double=0.0, BOOL/Bool=NO. You should ensure that all reset values conform to minimum and maximum
 values, list entries and regular expressions. Any values that are non-conforming will be output to the console.
 
 > Objective-C example
 
 ```objc
 - (void) reset {
   self.decibelLimit = 5.1;
   self.foregroundColorHex = @"fa3bcc";
 }
 ```
 
 > Swift example
 
 ```swift
 @objc override func reset() {
    decibelLimit = 5.1
    foregroundColorHex = "fa3bcc"
 }
 ```
 */
- (void) reset;

#if TARGET_OS_IOS

/**
 **Availability: iOS only.**
 
 By default Appfigurate uses the vendor identifier to target configuration to a specific device. The vendor identifier
 is the result of: `[[[UIDevice currentDevice] identifierForVendor] UUIDString]`
 
 Instead of the vendor identifier, you may prefer to use an application specific custom identifier that you tie to a
 specific device. The default value of `customIdentifier` is nil.
 
 > Objective-C example
 
 ```objc
 - (NSString* _Nullable) customIdentifier {
    return [KeychainStorage savedCustomerUUID]
 }
 ```
 
 > Swift example
 
 ```swift
 @objc override func customIdentifier() -> String? {
    return KeychainStorage.savedCustomerUUID()
 }
 ```
 */
- (NSString* _Nullable) customIdentifier;

/**
 **Availability: iOS automation testing only.**
 
 Converts the current state of the `APLConfiguration` instance into a string that can be passed as launch arguments to
 the app when launched as UI automation test. The `-[APLConfiguration allowInvalidSignatures]` method in the app under
 test must return YES for this configuration to be applied.
 
 > Objective-C example

 ```obj-c
 - (void)setUp {
   [super setUp];
   Configuration* c = [Configuration new];
   c.webserviceURL = "https://localhost:443/api";       // change URL to dummy server
   XCUIApplication* app = [XCUIApplication new];
   app.launchArguments = [c automationLaunchArguments]; // convert to launch argument
   [app launch];                                        // launch app under test
 }
 ```
 
 > Swift example
 
 ```swift
 func setUp() {
    super.setUp()
    let c = Configuration()
    c.webserviceURL = "https://localhost:443/api"       // change URL to dummy server
    let app = XCUIApplication()
    app.launchArguments = c.automationLaunchArguments() // convert to launch argument
    app.launch()                                        // launch app under test
 }
 ```
 */
- (NSArray<NSString*>* _Nonnull) automationLaunchArguments;

/**
 **Availability: iOS automation testing only.**
 
 Resets the apps configuration to defaults, by generating a string that can be passed as launch arguments
 to the app when launched as a UI automation test.
 
 ```obj-c
 - (void)setUp {
   [super setUp];
   Configuration* c = [Configuration new];
   XCUIApplication* app = [XCUIApplication new];
   app.launchArguments = [c automationLaunchArgumentsReset]; // convert to launch argument
   [app launch];                                             // launch app under test
 }
 ```
 
 > Swift example
 
 ```swift
 func setUp() {
    super.setUp()
    let c = Configuration()
    let app = XCUIApplication()
    app.launchArguments = c.automationLaunchArgumentsReset]; // convert to launch argument
    app.launch()                                             // launch app under test
 }
 ```
 
 */
- (NSArray<NSString*>* _Nonnull) automationLaunchArgumentsReset;

/**
 **Availability: iOS automation testing only.**
 
 Allows a custom action in your `APLConfiguration` subclass to be executed, by generating a string that
 can be passed as launch arguments to the app when launched as a UI automation test. The
 `-[APLConfiguration allowInvalidSignatures]` method in the app under test must return YES for this configuration
 to be applied.
 
 ```obj-c
 - (void)setUp {
   [super setUp];
   Configuration* c = [Configuration new];
   XCUIApplication* app = [XCUIApplication new];
   app.launchArguments = [c automationLaunchArgumentsWithAction: @"zeroLogs"]; // convert to launch argument
   [app launch];                                                               // launch app under test
 }
 ```
 
 > Swift example
 
 ```swift
 func setUp() {
    super.setUp()
    let c = Configuration()
    let app = XCUIApplication()
    app.launchArguments = c.automationLaunchArgumentsWithAction("zeroLogs") // convert to launch argument
    app.launch()                                                            // launch app under test
 }
 ```
 */
- (NSArray<NSString*>* _Nonnull) automationLaunchArgumentsWithAction: (NSString* _Nonnull) action;

#endif

@end

//------------------------------------------------------------------------------

#if TARGET_OS_IOS

/**
 **Availability: iOS only.**
 
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

//------------------------------------------------------------------------------

#if TARGET_OS_IOS
/**
 **Availability: iOS apps only.**
 
 You must call `APLApplicationDidFinishLaunchingWithOptions()` in your app delegate's `application:didFinishLaunchingWithOptions:`
 method.
 
 > Objective-C example
 
 ```objc
 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   APLApplicationDidFinishLaunchingWithOptions(launchOptions);
   return YES;
 }
 ```
 
 > Swift example
 
 ```swift
 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
   APLApplicationDidFinishLaunchingWithOptions(launchOptions)
   return true
 }
 ```
 */
extern void APLApplicationDidFinishLaunchingWithOptions(NSDictionary* _Nullable launchOptions);

/**
 **Availability: iOS apps only.**
  
 You must call `APLApplicationOpenURL()` in your app delegate's `application:openURL:options:` method.
 
 > Objective-C example
 
 ```objc
 - (BOOL) application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
   return APLApplicationOpenURL(url);
 }
 ```
 
 > Swift example
 
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
 **Availability: watchOS extensions only.**
  
 You must call `APLApplicationDidFinishLaunching()` in your extension's delegate `applicationDidFinishLaunching` method.
 
 > Objective-C example
 
 ```objc
 - (void) applicationDidFinishLaunching {
     APLApplicationDidFinishLaunching();
 }
 ```
 
 > Swift example
 
 ```swift
 func applicationDidFinishLaunching() {
   APLApplicationDidFinishLaunching()
 }
 ```
 */
extern void APLApplicationDidFinishLaunching(void);

/**
 **Availability: watchOS extensions only.**
 
 Receives configuration commands and payloads from the paired iPhone's Appfigurate app.
 
 If your watch app has its own `WCSessionDelegate`, then call the `APLSessionDidReceiveMessage()` function from within
 your `session:didReceiveMessage:replyHandler:` method (see examples below). If your watch app *does not* have its own
 `WCSessionDelegate` then you do not need to do anything - Appfigurate library installs a `WCSessionDelegate` and calls
 `APLSessionDidReceiveMessage()` automatically.
 
 > Objective-C example
 
 ```objc
 - (void) session: (WCSession*) session didReceiveMessage: (NSDictionary<NSString*,id>*) message
    replyHandler: (void (^)(NSDictionary<NSString*,id>*)) replyHandler {
    NSDictionary* reply = APLSessionDidReceiveMessage(message);
    if (reply != nil)
        replyHandler(reply);
    else
       ...
 ```
 
 > Swift example
 
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
 **Availability: All.**

 Returns the version of the Appfigurate library in the format "major.minor.patch". e.g. "5.1.2"
 */
extern NSString* _Nonnull APLVersion(void);

/**
 **Availability: All.**

 Registers a delegate method that will be called back when Appfigurate has updated the configuration of the app or
 extension. See also `APLAddConfigurationUpdatedBlock()` function for block based callback.
 */
extern void APLAddConfigurationUpdatedListener(_Nonnull id<APLConfigurationUpdated> target);

/**
 **Availability: All.**

 Registers a block that will be called back when Appfigurate has updated the configuration of the app or extension.
 Returns: an opaque object to act as the observer. See also `APLRemoveConfigurationUpdatedBlock(observer)`.
 */
extern id<NSObject> _Nonnull APLAddConfigurationUpdatedBlock(_Nonnull APLConfigurationUpdatedBlock block);

/**
 **Availability: All.**

 Unregisters the delegate method that will be called back when Appfigurate has updated the configuration of the
 application. You may optionally call this method before the target is deallocated.
 */
extern void APLRemoveConfigurationUpdatedListener(_Nonnull id<APLConfigurationUpdated> target);

/**
 **Availability: All.**

 Unregisters the block that will be called back when Appfigurate has updated the configuration of the application. You
 must call this method before the block is deallocated. The observer argument is the result of
 `APLAddConfigurationUpdatedBlock(block)`.
 */
extern void APLRemoveConfigurationUpdatedBlock(_Nonnull id<NSObject> observer);

/**
 **Availability: All.**

 When YES, Appfigurate library debugging messages will be output to the console. The default is NO. It is best practice
 to distribute applications via TestFlight and the App Store with logging set to NO. Also see `APLLogging` key in the
 Info.plist file.
 */
extern void APLSetLogging(BOOL logging);

/**
 **Availability: All.**

 Saves the configuration persisted in the keychain into temporary storage. Some apps have functionality to erase the
 keychain to reset apps back to 'factory defaults', which has the side effect of removing any Appfigurate configuration
 persisted in the keychain. Usage example:
 
 > Objective-C example
 
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
 **Availability: All.**

 Restores the configuration from temporary storage back into the keychain. See `APLSaveConfiguration()` for more details
 and usage example.
 */
extern void APLRestoreConfiguration(void);

/**
 **Availability: All.**
 
 The application or framework that links in AppfigurateLibrary.xcframework must define a function with the following
 prototype that returns the Class (Obj-C) or AnyClass (Swift) of your APLConfiguration subclass.
 
 > Objective-C example
 
 ```objc
 - (Class) _Nonnull APLConfigurationClass(void) {
   return [ExampleConfiguration class];
 }
 ```
 
 > Swift example
 
 ```
 @_cdecl("APLConfigurationClass")
 func APLConfigurationClass() -> AnyClass {
     return ExampleConfiguration.self;
 }
 ```
 */
extern Class _Nonnull APLConfigurationClass(void);
