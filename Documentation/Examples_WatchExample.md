## WatchExample

This example is written in Objective-C and generates a watchOS 2+ compatible app. 

For Appfigurate to be able to configure watchOS apps the following must be observed:

* `APLConfiguration` subclass can optionally be shared between the iOS app and watchOS app.
* When configuring with Appfigurate, the app on the watch **must** be running in the  foreground.
* If your watchOS app uses `WCSessionDelegate`, then you may need to call `APLSessionDidReceiveMessage()` programmatically. See `WCSession` section of [Advanced Configuration](AdvancedConfiguration.md).

#### Setup

* Launch Appfigurate on the paired iPhone.
* Tap `≡` `Add App`.
* Select app type `watchOS`.
* Enter the URL Scheme `example`. This URL scheme is already setup in WatchExample's `Info.plist` file. The scheme name **must** be the same as the containing iOS app that the watchOS app is embedded in.
* The private key used to sign configuration payloads will be generated. Depending on the speed of your device this may take a few seconds.
* The following screen will be displayed:

![Watch 0](./Images/WatchStep0.png)

* Tap `Output .m implementation file`. We're not interested in the whole file, just the public key.
* Choose an output method, and tap `Output`.
* The .m implementation file will look similar to this (your public key *will* differ to the one displayed below):

> Objective-C - your output .m implementation file:

```objc
#import "Configuration.h"

@implementation Configuration

BOOL_PROPERTY(debugLogging, @"Log debug output to console")
STRING_PROPERTY_LIST_EDIT(serverURL, @"https:\\/\\/[\\w\\.-]+\\.yourappserver.com/.*", @"URL of app server", @{@"Dev":@"https://dev.yourappserver.com/api", @"Prod":@"https://www.yourappserver.com/api"});

- (BOOL) allowInvalidSignatures {
#if DEBUG
	return YES;
#else
	return NO;
#endif
}

- (NSString*) publicKey {
	// 1E 1F 25 C4 70 8E
	return @"-----BEGIN PUBLIC KEY-----\n" \
		"MIIBIjCCagkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqapUve6Hzrd1el1WeT6a\n" \
		"BHDUJWBbOsHhQjDp1ch8VwsNTRhECjRpBSlZLHF8c//IFbTlZym849IRnB39bWTo\n" \
		"KgPZPTuZSQ3r8t7bshhqCcBHk9P27S6nFFTlQF3AZRvwYSIMyjkn+1ELih/fnw+h\n" \
		"zcQyVZSgaIHNH8uvZCXLZvXP/Lcr81SQdE4SLrYSKIrlJBNGWeCpA+iirkRWQeVg\n" \
		"2SIfW+tAkVei4NnZJLe4SserYIjsO/9G1weUYxgqBBS+/s857FDxPy/h3aPM9qLK\n" \
		"PxljfrRHczMcpwFWQo4UgzuDBQHD8h/CsZU7wK3E6zi6KtzgrHD4zkRvVgk1WbaT\n" \
		"owI0A2bC\n" \
		"-----END PUBLIC KEY-----\n";
}

- (void) reset {
	self.debugLogging = NO;
	self.serverURL = @"https://www.yourappserver.com/api";
}

@end
```

* In Xcode, copy your `publicKey` method you just output and overwrite the `TARGET_OS_WATCH` section of `publicKey` in your copy of the `ExampleConfiguration.m` file. (Leaving the `TARGET_OS_IOS` section intact).

> Objective-C - your ExampleConfiguration.m file:

```objc
- (NSString*) publicKey {
#if TARGET_OS_IOS 
...
#elif TARGET_OS_WATCH
	// 1E 1F 25 C4 70 8E
	return @"-----BEGIN PUBLIC KEY-----\n" \
		"MIIBIjCCagkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqapUve6Hzrd1el1WeT6a\n" \
		"BHDUJWBbOsHhQjDp1ch8VwsNTRhECjRpBSlZLHF8c//IFbTlZym849IRnB39bWTo\n" \
		"KgPZPTuZSQ3r8t7bshhqCcBHk9P27S6nFFTlQF3AZRvwYSIMyjkn+1ELih/fnw+h\n" \
		"zcQyVZSgaIHNH8uvZCXLZvXP/Lcr81SQdE4SLrYSKIrlJBNGWeCpA+iirkRWQeVg\n" \
		"2SIfW+tAkVei4NnZJLe4SserYIjsO/9G1weUYxgqBBS+/s857FDxPy/h3aPM9qLK\n" \
		"PxljfrRHczMcpwFWQo4UgzuDBQHD8h/CsZU7wK3E6zi6KtzgrHD4zkRvVgk1WbaT\n" \
		"owI0A2bC\n" \
		"-----END PUBLIC KEY-----\n";
#endif
}
```

* Select `WatchExample (watchOS)` in Xcode scheme.
* Tap run to install WatchExample onto the Apple Watch, and AppfigurateExample onto the paired iPhone.
* The Apple Watch will display the following:

![Watch 1](./Images/WatchStep1.png)

* The example displays a storyboard of the current configuration.

#### Reading current configuration

* On the paired iPhone, run Appfigurate.
* Tap `≡` `Select app`. Note that your app name is currently listed as `example`. The first successful launch of WatchExample will see the app name, version number and icon updated.
* Tap the `example` row. AppfigurateExample will now be launched on the paired iPhone. The iPhone will proxy the configuration request to the Watch.
* The screen will briefly flash and then control will be given back to Appfigurate, at which point the current configuration of WatchExample will be displayed on the screen:

![Watch 2](./Images/iOSExampleStep7.png)

#### Changing and applying configuration

* Change the *boolean* switch to the opposite value.
* Tap the `Apply ⌄` button in navigation bar. The AppfigurateExample app will now be launched on the iPhone. The iPhone will proxy the configuration payload to the Watch.
* The WatchExample will have the configuration payload applied, and the screen will update reflecting the new *boolean* value.
