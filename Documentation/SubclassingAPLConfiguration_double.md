# Subclassing APLConfiguration - double

`double` is an 8 byte floating point type with an approximate range of 2.3E-308 to 1.7E+308. The default value of a `double` is 0.0. You can change the default value of the property by assigning a new value in an overridden `reset` method.

`@property(assign) double propertyName;`

#### double slider implementation

`DOUBLE_PROPERTY_SLIDER(propertyName, minValue, maxValue, icon, description)`

![DoubleSlider](./Images/DoubleSlider.png)

The `double` property can be changed in Appfigurate using a `UISlider` between minimum and maximum values. You can customize the minimum and maximum images using the icon parameter.

> Objective-C

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) double maxDecibel;
@end

@implementation Configuration
DOUBLE_PROPERTY_SLIDER(maxDecibel, 60.5, 120.41, APLIconSliderVolume, @"Clipping - decibels");
...
```

#### double editable implementation

`DOUBLE_PROPERTY_EDIT(propertyName, minValue, maxValue, regex, description)`

![DoubleEdit](./Images/DoubleEdit.png)

The `double` property can be changed in Appfigurate using a `UITextField` between minimum and maximum values, and an optional regular expression validating input.

> Objective-C

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) double shotAccuracy;
@end

@implementation Configuration
DOUBLE_PROPERTY_EDIT(shotAccuracy, -2.1, 4.1, @"", @"Shot accuracy");
...
```

#### double list implementation

`DOUBLE_PROPERTY_LIST(propertyName, description, ...)`

![DoubleList](./Images/DoubleList.png)

The `double` property can be changed in Appfigurate by allowing the user to select from a predefined list of valid choices.

> Objective-C

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) double rating;
@end

@implementation Configuration
DOUBLE_PROPERTY_LIST(rating, @"Quality rating", @{@"Low":@10.0,@"Average":@50.0,@"Excellent":@95.0});
...
```

#### double editable list implementation

`DOUBLE_PROPERTY_LIST_EDIT(propertyName, minValue, maxValue, regex, description, ...)`

![DoubleListEdit](./Images/DoubleListEdit.png)

The `double` property can be changed in Appfigurate by allowing the user to select from a predefined list of valid choices. The user can customize the list adding by additional values using a `UITextField` between minimum and maximum values, and an optional regular expression validating input.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) double forwardServerTime;
@end

@implementation Configuration
DOUBLE_PROPERTY_LIST_EDIT(forwardServerTime, 0.0, 366.0, @"^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\\.\\d+)?$", @"Forward server time (days)", @{@"7 days":@7.0,@"1 month":@30.0,@"1 Year":@365.0});
...
```
