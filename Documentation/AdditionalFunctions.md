# Additional library functions

### APLVersion function

`NSString* _Nonnull APLVersion(void)`

Returns the version of the Appfigurate library in the format "major.minor.patch". e.g. "5.1.2"

### APLAddConfigurationUpdatedListener function

`APLAddConfigurationUpdatedListener(_Nonnull id<APLConfigurationUpdated> target)`

Registers a delegate method that will be called back when Appfigurate has updated the configuration of the app or extension.

> Objective-C example

```objc
#import "Appfigurate.h"

@interface ExampleViewController() <APLConfigurationUpdated>
@end

@implementation ExampleViewController

- (void) viewDidLoad {
    APLAddConfigurationUpdatedListener(self);
}

- (void) configurationUpdated:(NSNotification *)notification {
    [self.tableView reloadData];
}
...
```

> Swift example

```swift
class SwiftExampleViewController: UITableViewController, APLConfigurationUpdated {

override func viewDidLoad() {
    APLAddConfigurationUpdatedListener(self)
}

func configurationUpdated(_ notification: Notification?) {
    self.tableView.reloadData()
}
...
```

### APLRemoveConfigurationUpdatedListener function

`void APLRemoveConfigurationUpdatedListener(_Nonnull id<APLConfigurationUpdated> target)`

Unregisters the delegate method that will be called back when Appfigurate has updated the configuration of the application.

iOS8: you must call this method before deallocating the target. iOS9+/watchOS2+: you may optionally call this method before the target is deallocated.

### APLSetLogging function

`void APLSetLogging(BOOL logging)`

When YES, debugging messages will be output to the console. The default is NO.
See also [APLLogging Info.plist](./AdvancedConfiguration.md) key.
