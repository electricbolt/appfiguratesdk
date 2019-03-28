# Subclassing APLConfiguration - NSInteger

`NSInteger` is platform dependent, 32-bit signed values on 32-bit CPUs and 64-bit signed values on 64-bit CPUs. The default value of a `NSInteger` is 0. You can change the default value of the property by assigning a new value in an overridden `reset` method.

`@property(assign) NSInteger propertyName;`

#### NSInteger slider implementation

`INT_PROPERTY_SLIDER(propertyName, minValue, maxValue, icon, description)`

![IntSlider](./Images/IntSlider.png)

The `NSInteger` property can be changed in Appfigurate using a `UISlider` between minimum and maximum values. You can customize the minimum and maximum images using the icon parameter.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) NSInteger volumeRange;
@end

@implementation Configuration
INT_PROPERTY_SLIDER(volumeRange, 50, 100, APLIconSliderVolume, @"Limit volume level");
...
```

#### NSInteger editable implementation

`INT_PROPERTY_EDIT(propertyName, minValue, maxValue, regex, description)`

![IntSlider](./Images/IntEdit.png)

The `NSInteger` property can be changed in Appfigurate using a `UITextField` between minimum and maximum values, and an optional regular expression validating input.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) NSInteger gameLevels;
@end

@implementation Configuration
INT_PROPERTY_EDIT(gameLevels, 1, 5, @"", @"Maximum number of game levels");
...
```

#### NSInteger list implementation

`INT_PROPERTY_LIST(propertyName, description, ...)`

![IntList](./Images/IntList.png)

The `NSInteger` property can be changed in Appfigurate by allowing the user to select from a predefined list of valid choices.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) NSInteger rating;
@end

@implementation Configuration
INT_PROPERTY_LIST(rating, @"Quality rating", @{@"Low":@10,@"Average":@50,@"Excellent":@95});
...
```

#### NSInteger editable list implementation

`INT_PROPERTY_LIST_EDIT(propertyName, minValue, maxValue, regex, description, ...)`

![IntListEdit](./Images/IntListEdit.png)

The `NSInteger` property can be changed in Appfigurate by allowing the user to select from a predefined list of valid choices. The user can customize the list adding by additional values using a `UITextField` between minimum and maximum values, and an optional regular expression validating input.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) NSInteger availabilityDuration;
@end

@implementation Configuration
INT_PROPERTY_LIST_EDIT(availablityDuration, 0, 365, @"^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])$", @"Duration in days emails are available", @{@"7 days":@7,@"1 month":@30,@"1 Year":@365});
...
```
