# Subclassing APLConfiguration - BOOL

`BOOL` properties must be either `YES` or `NO`. The default value of a `BOOL` property is `NO`. You can change the default value of the property by assigning a new value in an overridden `reset` method.

`BOOL` properties should be declared in your `APLConfiguration` subclass header file as follows:

`@property(assign) BOOL propertyName;`

#### BOOL switch implementation

`BOOL_PROPERTY(propertyName, description)`

![UISwitch](./Images/UISwitch.png)

Allows the `BOOL` property to be changed in Appfigurate using a `UISwitch`.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) BOOL logging;
@end

@implementation Configuration
BOOL_PROPERTY(logging, @"Enable debug logging to console");
...
```
