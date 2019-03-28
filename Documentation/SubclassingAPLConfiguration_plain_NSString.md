# Subclassing APLConfiguration - plain NSString

The default value of a `NSString` is nil. You can change the default value of the property by assigning a new value in an overridden `reset` method.

`@property(strong) NSString propertyName;`

This page describes plain textual strings. Appfigurate also supports [encrypted strings](./SubclassingAPLConfiguration_encrypted_NSString.md).

#### NSString editable implementation

`STRING_PROPERTY_EDIT(propertyName, regex, description)`

![StringEdit](./Images/StringEdit.png)

The `NSString` property can be changed in Appfigurate using a `UITextField` with an optional regular expression validating input.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, strong) NSString usernameOverride;
@end

@implementation Configuration
STRING_PROPERTY_EDIT(usernameOverride, @"", @"Overridden session username");
...
```

#### NSString list implementation

`STRING_PROPERTY_LIST(propertyName, description, ...)`

![StringList](./Images/StringList.png)

The `NSString` property can be changed in Appfigurate by allowing the user to select from a predefined list of valid choices.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, strong) NSString backgroundColorHex;
@end

@implementation Configuration
STRING_PROPERTY_LIST(backgroundColorHex, @"Color of background", @{@"LightGray":@"#d3d3d3", @"White":@"#ffffff", @"Beige":@"f5fcdc"});
...
```

#### NSString editable list implementation

`STRING_PROPERTY_LIST_EDIT(propertyName, regex, description, ...)`

![StringListEdit](./Images/StringListEdit.png)

The `NSString` property can be changed in Appfigurate by allowing the user to select from a predefined list of valid choices. The user can customize the list adding by additional values using a `UITextField` and an optional regular expression validating input.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, strong) NSString foregroundColorHex;
@end

@implementation Configuration
STRING_PROPERTY_LIST_EDIT(foregroundColorHex, @"^#([a-f0-9]{6})$", @"Color of foreground", @{@"Black":@"#000000", @"MistyRose":@"#ffe4e1", @"LightBlue":@"add8e6"});
...
```
