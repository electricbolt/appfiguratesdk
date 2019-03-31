## ActionExample Extension

This example demonstrates configuring an iOS app extension. This specific example is an Action extension, but any iOS app extension type can be configured. 

For Appfigurate to be able to configure app extensions the following must be observed:

* `APLConfiguration` subclass must be shared between the iOS app and app extension.
* Since the configuration is stored in the keychain, the keychain must be shared between the iOS app and app extension.

For more information on keychain sharing and associated `Info.plist` attributes, see [Advanced Configuration](AdvancedConfiguration.md).

#### Setup

Assuming you've followed the [AppfigurateExample](Examples_AppfigurateExample.md) instructions, testing the Action extension is easy.

* Select `ActionExample Extension (iOS)` in Xcode scheme. Tap run.
* Xcode will prompt you with the following:

![Action 1](./Images/ActionStep1.png)

* Select `Photos`, then tap the `Run` button.
* The Photos app will be launched on the Simulator (or connected device).
* Select a photo. 
* Tap the `Share` icon: 

![Action 2](./Images/ActionStep2.png)

* A toolbar will appear. Swipe right to reveal the `ActionExample` icon:

![Action 3](./Images/ActionStep3.png)

* The ActionExample app extension will now be launched. The example doesn't do anything with a photo, but it does display a storyboard of the current configuration that is shared with the containing iOS app AppfigurateExample.
* Launch Appfigurate. Tap `Example x.y.z`.
* The screen will briefly flash and control will be given back to Appfigurate. The current configuration will be displayed.
* Change the *boolean* switch to the opposite value.
* Tap the `Apply ⌄` button in navigation bar. The AppfigurateExample app will now be launched, and the configuration applied.
* Launch the Photos app again. The ActionExample Extension should still be displayed, if not follow the instructions above to redisplay.
* The ActionExample app extension storyboard of the current configuration will be displayed. The value of the boolean should be updated to reflect the value you applied.

![Action 4](./Images/ActionStep4.png)