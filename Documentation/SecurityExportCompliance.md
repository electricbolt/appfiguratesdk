
## Export compliance for your apps

libAppfigurateLibrary.a and libAppfigurateWatchLibrary.a (that you integrate into your apps) do not include or use any cryptographic routines as stated in Category 5 Part 2 of the U.S. Encryption and Export Administration Regulations (EAR).

## Appfigurate database encryption

### Simulator

For Simulator builds we rely upon you and your Mac's security to secure your app's metadata. The database that stores your app's metadata is not encrypted and is stored in:

> ~/Library/Application Support/Appfigurate
 
This allows us to share your app's metadata across all Simulators where Appfigurate is installed.

### Device 

For Device builds (installed from the App Store), the database that stores your app's metadata is encrypted on the device. You can optionally enable PIN and TouchID/FaceID to unlock Appfigurate each time it is run, or to restrict your app's metadata from being exported. The database will be deleted after 5 incorrect PIN attempts.

## App metadata exports & backup

Exported app metadata is secured using the following:

* Passphrase derivation function uses 10-rounds of bcrypt.
* App metadata blob is encrypted with AES256.

## Security best practices

### 1. Protecting your app metadata
Appfigurate generates a unique 2048-bit RSA private key as part of an app's metadata that is used for signing configuration payloads. To protect app metadata you should follow these best practices:

#### Simulator
We rely upon your Mac's security. You Mac should be up-to-date with all security patches applied, firewall enabled, FileVault on. You should use a strong password on boot and screen unlock.

#### Device
Ensure the device has a strong passcode (six-digit) or custom alphanumeric code. Enable Erase Data after ten failed passcode attempts. [https://support.apple.com/en-us/HT204060](https://support.apple.com/en-us/HT204060). 

In Appfigurate, enable PIN/TouchID/FaceID to unlock Appfigurate each time it is run and to restrict your apps metadata from being exported.

### 2. Use an invalid private key for development
#### Step 1 - back up the real app's metadata
Export (or backup) the app's metadata (with the real private key) using a strong passphrase and store securely. When exporting, ensure the `Re-export` switch is set to on. 

> If you forget the passphrase to the export or backup, the app's metadata will be lost.

#### Step 2 - Replace the real app's metadata
Delete the (real) app from Appfigurate. Generate a new app using the same URL Scheme. Ensure `APLConfiguration.allowInvalidSignatures` returns YES for debug builds and NO for release builds. 

You will now be able to use Appfigurate for development against debug builds without requiring the real private key. Ensure that you **do not** replace the public key in the `APLConfiguration.publicKey` method with the newly generated app's public key.

### 3. Sharing between team members
If you need to share an app's metadata (with the real private key) across devices in your team, you should limit the ability to re-export the app's metadata on the new device. You can do this when exporting from your device by setting the `Re-export` switch to off. When the app's metadata is imported to the new device, it will not be exportable from that device.

### 4. Release builds

When including Appfigurate library into release builds (App Store/TestFlight Beta/Enterprise), you should ensure that:

1. Your `APLConfiguration` subclass doesn't contain any non-public information that could be used for malicious purposes. e.g. internal server names.
2. If you have overridden the default behaviour of `APLConfiguration.allowInvalidSignatures`, that you've checked it returns the correct value for debug and release builds. To test this, use Appfigurate to read the current configuration of your app. If the release build reports `! Debug build - App allows invalid signatures` then your implementation of `APLConfiguration.allowInvalidSignatures` is wrong.
3. You can test applying configuration using an invalid signature by long-pressing the `Apply⌄` button, then tapping the `? Apply invalid to this device` action. Your app will be launched with a configuration payload signed by an invalid key. If the configuration is successfully applied, then your implementation of `APLConfiguration.allowInvalidSignatures` is incorrect.

## App Store compliance

To ensure you remain in compliance with [App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/), you must not include any hidden or undocumented features in your app; your apps functionality should be made clear to App Review (section 2.3.1). Appfigurate must not be used to enable hidden functionality; you may only use it to change runtime configuration for testing purposes (e.g. change web service URL to a point to a testing region instead of production).

Note that all configuration applied to a device will automatically revert to default values after 7 days. Remotely applied configuration can only be targetted to one device at a time, no wildcard targetting ability is available.