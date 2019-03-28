# Subclassing APLConfiguration

## Supported property types

Appfigurate supports the following types of properties:

[BOOL](./SubclassingAPLConfiguration_BOOL.md)

[NSInteger](./SubclassingAPLConfiguration_NSInteger.md)

[float](./SubclassingAPLConfiguration_float.md)

[double](./SubclassingAPLConfiguration_double.md)

[NSString](./SubclassingAPLConfiguration_plain_NSString.md) - plain text

[NSString](./SubclassingAPLConfiguration_encrypted_NSString.md) - encrypted text

## UISlider icon types

### APLIconSliderSpeed

Tortise (minimum) and Hare (maximum) images

![Tortise](./Images/slow.png) ... ![Hare](./Images/fast.png)

### APLIconSliderCapacity

Battery empty (minimum) and Battery full (maximum) images

![Empty](./Images/LowBattery.png) ... ![Full](./Images/FullBattery.png)

### APLIconSliderNumeric

0 (minimum) and 1 (maximum) images

![Zero](./Images/Zero.png) ... ![One](./Images/One.png)

### APLIconSliderBrightness

Dim (minimum) and Bright (maximum) images

![Dim](./Images/Dim.png) ... ![Bright](./Images/Bright.png)

### APLIconSliderVolume

Low volume (minimum) and High volume (maximum) images

![Quiet](./Images/Quiet.png) ... ![Loud](./Images/Loud.png)

## APLConfiguration overrides

### publicKey method

`- (NSString* _Nonnull) publicKey`

Override the `publicKey` method to return the public key for this app.
The Appfigurate app can export the correct public key for the app by:

1. Tap `≡ <your app name here>`.
2. Tap `Output .m implementation file`.
3. Choose your output method.
4. Copy and paste the publicKey method into your `APLConfiguration` subclass implementation. If you have both an iOS app and a watchOS app then you will need to return the correct public key from the method as in the following example:

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

### allowInvalidSignatures method (optional)

`- (BOOL) allowInvalidSignatures`

Override if required. Return `YES` if invalid signatures are allowed to
apply configuration, or `NO` if only a correct signature is acceptable.

It is best practice to make release builds to only allow correct signatures.

The default implementation of `allowInvalidSignatures` is as follows:

- for Simulator builds, always returns `YES`.
- for Device builds, returns `YES` if the embedded entitlements file has `get-task-allow = true`, otherwise returns `NO`. (Release builds distributed through the App Store, Testflight, Ad Hoc or Enterprise will have `get-task-allow = false`).

> Objective-C example

```
- (BOOL) allowInvalidSignatures {
#if DEBUG
    return YES;
#else
    return NO;
#endif
}
```

### reset method (optional)

`- (void) reset`

Override if required to change the default values of the configuration object. You must ensure the default values meet minimum/maximum, list or regex value specifications for the property type.

> Objective-C example

```objc
- (void) reset
    self.decibelLimit = 5.1;
    self.foregroundColorHex = @"fa3bcc";
}
```

### customIdentifier method (optional)

`- (NSString* _Nullable) customIdentifier`

Available for iOS apps & app extensions only. watchOS uses the paired device's vendor identifier or custom identifier to target configuration.

By default Appfigurate uses the vendor identifier to target configuration to
a specific device. The vendor identifier is the result of:
`[[[UIDevice currentDevice] identifierForVendor] UUIDString]`

Instead of the vendor identifier, you may prefer to use an application 
specific custom identifier that you tie to a specific device. The default 
value of `customIdentifier` is `nil`.

> Objective-C example

```objc
- (NSString*) customIdentifier {
	return myAppRegistration.hardwareIdentity;
}
```
