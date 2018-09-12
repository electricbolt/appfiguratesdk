/*******************************************************************************
 * Appfigurate.h                                                               *
 * Appfigurate™ Copyright© 2013; Electric Bolt Limited.                        *
 ******************************************************************************/

#import <Foundation/Foundation.h>
#if TARGET_OS_IOS
#import <UIKit/UIKit.h>
#endif

typedef NS_ENUM(NSInteger, APLPredefinedIcon)
{
    APLIconSliderSpeed,      ///< Tortise, Hare icon
    APLIconSliderCapacity,   ///< Battery icon
    APLIconSliderNumeric,    ///< 0/1 icon
    APLIconSliderBrightness, ///< Brightness icon
    APLIconSliderVolume      ///< Speaker icon
};

//------------------------------------------------------------------------------

// * BOOL *

// BOOL property
#define BOOL_PROPERTY(propertyName, description) \
- (NSString*) propertyName##Description { \
    return description; \
}

// * NSInteger *

// NSInteger property slider
#define INT_PROPERTY_SLIDER(propertyName, minValue, maxValue, icon, description) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSInteger) propertyName##Min { \
    return minValue; \
} \
- (NSInteger) propertyName##Max { \
    return maxValue; \
} \
- (APLPredefinedIcon) propertyName##Icon { \
    return icon; \
}

// NSInteger property edit field
#define INT_PROPERTY_EDIT(propertyName, minValue, maxValue, regex, description) \
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
}

// NSInteger property list
#define INT_PROPERTY_LIST(propertyName, description, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
}

// NSInteger property list and edit field
#define INT_PROPERTY_LIST_EDIT(propertyName, minValue, maxValue, regex, description, ...) \
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
}

// * float *

// float property slider
#define FLOAT_PROPERTY_SLIDER(propertyName, minValue, maxValue, icon, description) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (float) propertyName##Min { \
    return minValue; \
} \
- (float) propertyName##Max { \
    return maxValue; \
} \
- (APLPredefinedIcon) propertyName##Icon { \
    return icon; \
}

// float property edit field
#define FLOAT_PROPERTY_EDIT(propertyName, minValue, maxValue, regex, description) \
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
}

// float property list
#define FLOAT_PROPERTY_LIST(propertyName, description, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
}

// float property list and edit field
#define FLOAT_PROPERTY_LIST_EDIT(propertyName, minValue, maxValue, regex, description, ...) \
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
}

// * double *

// double property slider
#define DOUBLE_PROPERTY_SLIDER(propertyName, minValue, maxValue, icon, description) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (double) propertyName##Min { \
    return minValue; \
} \
- (double) propertyName##Max { \
    return maxValue; \
} \
- (APLPredefinedIcon) propertyName##Icon { \
    return icon; \
}

// double property edit field
#define DOUBLE_PROPERTY_EDIT(propertyName, minValue, maxValue, regex, description) \
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
}

// double property list
#define DOUBLE_PROPERTY_LIST(propertyName, description, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
}

// double property list and edit field
#define DOUBLE_PROPERTY_LIST_EDIT(propertyName, minValue, maxValue, regex, description, ...) \
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
}

// * NSString *

// NSString property edit field
#define STRING_PROPERTY_EDIT(propertyName, regex, description) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
}

// NSString property list
#define STRING_PROPERTY_LIST(propertyName, description, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
}

// NSString property list and edit field
#define STRING_PROPERTY_LIST_EDIT(propertyName, regex, description, ...) \
- (NSString*) propertyName##Description { \
    return description; \
} \
- (NSString*) propertyName##Regex { \
    return regex; \
} \
- (NSDictionary*) propertyName##Values { \
    return __VA_ARGS__; \
}

//------------------------------------------------------------------------------

@protocol APLConfigurationUpdated

- (void) configurationUpdated: (NSNotification* _Nullable) notification;

@end

//------------------------------------------------------------------------------

@interface APLConfiguration : NSObject

+ (APLConfiguration* _Nonnull) sharedConfiguration;

/**
 * Override me to return the public key for this application.
 */
- (NSString* _Nonnull) publicKey;

/**
 * Override me if required. Return YES if invalid signatures are allowed to
 * apply configuration, or NO if only a correct signature is acceptable.
 *
 * It is best practice to make release builds to only allow correct signatures.
 *
 * Default implementation of allowInvalidSignatures is as follows:
 * - for Simulator builds, always returns YES.
 * - for Device builds, returns YES if the embedded entitlements file has
 *   get-task-allow = true, otherwise returns NO. (Release builds distributed 
 *   through the App Store, Testflight, Ad Hoc or Enterprise will have
 *   get-task-allow = false).
 */
- (BOOL) allowInvalidSignatures;

/**
 * Returns a textual representation of all the property values.
 */
- (NSString* _Nonnull) description;

/**
 * Returns a textual representation of all the properties that have non default
 * values.
 */
- (NSString* _Nonnull) modifications;

/**
 * Override me if required to set default values into your properties.
 * By default, sets properties as follows: NSString=nil, NSInteger=0, 
 * float=0.0, double=0.0, BOOL=NO. You should ensure that all reset 
 * values conform to minimum and maximum values, list entries and regular 
 * expressions. Any reset values not conforming will be output to the console.
 */
- (void) reset;

#if TARGET_OS_IOS

/**
 * iOS only:
 * By default Appfigurate uses the vendor identifier to target configuration to
 * a specific device. The vendor identifier is the result of:
 * [[[UIDevice currentDevice] identifierForVendor] UUIDString]
 *
 * Instead of the vendor identifier, you may prefer to use an application 
 * specific custom identifier that you tie to a specific device. The default 
 * value of customIdentifier is nil.
 */
- (NSString* _Nullable) customIdentifier;

/**
 * iOS automation testing only:
 * Converts the current state of the APLConfiguration instance into a string
 * that can be passed as launch arguments to the app when launched as UI
 * automation test. The allowInvalidSignatures method in the APLConfiguration
 * instance in the app must return YES for this configuration to be applied.
 *
 * - (void)setUp {
 *   [super setUp];
 *   Configuration* c = [Configuration new];
 *   c.webserviceURL = "https://localhost:443/api"; // change URL to dummy server
 *   XCUIApplication* app = [XCUIApplication new];
 *   app.launchArguments = [c launchArguments];     // convert to launch argument
 *   [app launch];                                  // launch app under test
 * }
 */
- (NSArray<NSString*>* _Nonnull) automationLaunchArguments;

#endif

@end

//------------------------------------------------------------------------------

#if TARGET_OS_IOS

@interface APLConfigurationLabel : UILabel

/**
 Optionally assign a block to be run when the label is tapped.
 */
@property (nonatomic,copy,nullable) dispatch_block_t labelTappedBlock;

@end

#endif

//------------------------------------------------------------------------------

#if TARGET_OS_IOS
/**
 * iOS apps only:
 * Appfigurate performs method swizzling on UIApplicationDelegate to automatically
 * invoke APLApplicationDidFinishLaunchingWithOptions(). Developers who prefer 
 * not to use swizzling must do the following:
 * - Add the Boolean APLInstallDelegateMethods=NO in your app's Info.plist file.
 * - Call APLApplicationDidFinishLaunchingWithOptions() in your app's delegate
 *   application:didFinishLaunchingWithOptions: method.
 */
extern void APLApplicationDidFinishLaunchingWithOptions(NSDictionary* _Nullable launchOptions);

/**
 * iOS apps only:
 * Appfigurate performs method swizzling on UIApplicationDelegate to automatically
 * invoke APLApplicationOpenURL(). Developers who prefer 
 * not to use swizzling must do the following:
 * - Add the Boolean APLInstallDelegateMethods=NO in your app's Info.plist file.
 * - Call APLApplicationOpenURL() in your app's delegate
 *   application:openURL:sourceApplication:annotation: method.
 */
extern BOOL APLApplicationOpenURL(NSURL* _Nonnull url);

#elif TARGET_OS_WATCH

/**
 * watchOS extensions only:
 * Appfigurate performs method swizzling on WKExtensionDelegate to automatically
 * invoke APLApplicationDidFinishLaunching(). Developers who prefer not to use
 * swizzling must do the following:
 * - Add the Boolean APLInstallDelegateMethods=NO in your extension's Info.plist
 *   file.
 * - Call APLApplicationDidFinishLaunching() in your extension's delegate
 *   applicationDidFinishLaunching method.
 */
extern void APLApplicationDidFinishLaunching(void);

/**
 * watchOS extensions only:
 * If your watch app has its own WCSessionDelegate, then call the following
 * from your session:didReceiveMessage:replyHandler:
 *
 * - (void) session: (WCSession*) session didReceiveMessage: (NSDictionary<NSString*,id>*) message
 *    replyHandler: (void (^)(NSDictionary<NSString*,id>*)) replyHandler {
 *    NSDictionary* reply = APLSessionDidReceiveMessage(message);
 *    if (reply != nil)
 *        replyHandler(reply);
 *    else
 *       ...
 */
extern NSDictionary* _Nullable APLSessionDidReceiveMessage(NSDictionary<NSString*,id>* _Nonnull message);

#endif

/**
 Returns the version of the Appfigurate library.
 */
extern NSString* _Nonnull APLVersion(void);

/**
 * Registers a delegate method that will be called back when Appfigurate has
 * updated the configuration of the app or extension.
 */
extern void APLAddConfigurationUpdatedListener(_Nonnull id<APLConfigurationUpdated> target);

/**
 * Unregisters the delegate method that will be called back when Appfigurate has
 * updated the configuration of the application. iOS8: you must call this method
 * before deallocating the target. iOS9+: you may optionally call this method
 * before the target is deallocated.
 */
extern void APLRemoveConfigurationUpdatedListener(_Nonnull id<APLConfigurationUpdated> target);

/**
 * When YES, debugging messages will be output to the console. The default is NO.
 */
extern void APLSetLogging(BOOL logging);
