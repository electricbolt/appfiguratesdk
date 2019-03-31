## WatchExample Intent Extension

This example is written in Objective-C and requires watchOS 3. 

For Appfigurate to be able to configure app extensions the following must be observed:

* `APLConfiguration` subclass must be shared between watchOS app extension and watchOS intent extension.
* Since the configuration is stored in the keychain, the keychain must be shared between the watchOS app extension and intent extension

For more information on keychain sharing and associated `Info.plist` attributes, see [Advanced Configuration](AdvancedConfiguration.md).

#### Setup

To test the intent extension, use the instructions for WatchExample above.

#### Testing

Once WatchExample is running, long press the digital crown to invoke Siri.

![Watch 0](./Images/WatchIntent0.png)

Siri will be invoked:

![Watch 1](./Images/WatchIntent1.png)

Speak the following "send message using watch example".

![Watch 2](./Images/WatchIntent2.png)

If Siri responds with "unknown app watch example", then you should try again. Siri can take several minutes to recognise a new intent. See Xcode documentation [Test Your Intents App Extension](https://developer.apple.com/documentation/sirikit/creating_an_intents_app_extension) for more details.

Speak the following "bob".

![Watch 3](./Images/WatchIntent3.png)

In the console, you will see `NSLog` output, showing the current configuration of `boolean` property in the `ExampleConfiguration` class.

![Console 0](./Images/Console0.png)

Using Appfigurate on the paired iPhone, change the `boolean` property to the opposite value and click `Apply`. Speak again to Siri, and notice that the `NSLog` output in console has now changed.