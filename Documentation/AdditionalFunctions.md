# Additional library functions

### APLVersion function

`NSString* _Nonnull APLVersion(void)`

Returns the version of the Appfigurate library in the format "major.minor.patch". e.g. "5.1.2"

### APLAddConfigurationUpdatedListener function

`APLAddConfigurationUpdatedListener(_Nonnull id<APLConfigurationUpdated> target)`

Registers a delegate method that will be called back when Appfigurate has updated the configuration of the app or extension. See also `APLAddConfigurationUpdateBlock` function for block based callback.

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

Unregisters the delegate method that will be called back when Appfigurate has updated the configuration of the app or extension. See also `APLRemoveConfigurationUpdatedBlock` function.

*iOS8*: you must call this method before deallocating the target. 

*iOS9+/watchOS2+*: you may optionally call this method before the target is deallocated.

### APLAddConfigurationUpdatedBlock function

`id<NSObject> APLAddConfigurationUpdatedListener(_Nonnull APLConfigurationUpdatedBlock block)`

Registers a block that will be called back when Appfigurate has updated the configuration of the app or extension. Returns: an opaque object to act as the observer to be passed into the `APLRemoveConfigurationUpdateBlock` function. See also `APLAddConfigurationUpdateListener` function for delegate based callback.

> Objective-C example

```objc
#import "Appfigurate.h"

@implementation ExampleViewController

- (void) viewDidLoad {
    APLAddConfigurationUpdatedListener(^(NSNotification *notification) {
        [self.tableView reloadData];
    });
}
...
```

> Swift example

```swift
class SwiftExampleViewController: UITableViewController {

override func viewDidLoad() {
    APLAddConfigurationUpdatedBlock { (Notification?) in
        self.tableView.reloadData()
    }
}
...
```

### APLRemoveConfigurationUpdatedBlock function

`void APLRemoveConfigurationUpdatedBlock(_Nonnull id<NSObject> observer)`

Unregisters the block that will be called back when Appfigurate has updated 
the configuration of the app or extension. You must call this method before the block is deallocated. The observer argument is the result of 
`APLAddConfigurationUpdatedBlock()`. See also `APLRemoveConfigurationUpdatedListener` function for delegate based callback.

### APLSetLogging function

`void APLSetLogging(BOOL logging)`

When YES, debugging messages will be output to the console. The default is NO.
See also [APLLogging Info.plist](./AdvancedConfiguration.md) key.
