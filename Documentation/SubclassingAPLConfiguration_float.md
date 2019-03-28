# Subclassing APLConfiguration - float

`float` is a 4 byte floating point type with an approximate range of 1.2E-38 to 3.4E+38. The default value of a `float` is 0.0. You can change the default value of the property by assigning a new value in an overridden `reset` method.

`@property(assign) float propertyName;`

#### float slider implementation

`FLOAT_PROPERTY_SLIDER(propertyName, minValue, maxValue, icon, description)`

![FloatSlider](./Images/FloatSlider.png)

The `float` property can be changed in Appfigurate using a `UISlider` between minimum and maximum values. You can customize the minimum and maximum images using the `icon` parameter.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) float maxDecibel;
@end

@implementation Configuration
FLOAT_PROPERTY_SLIDER(maxDecibel, 60.5, 120.41, APLIconSliderVolume, @"Clipping - decibels");
...
```

#### float editable implementation

`FLOAT_PROPERTY_EDIT(propertyName, minValue, maxValue, regex, description)`

![FloatEdit](./Images/FloatEdit.png)

The `float` property can be changed in Appfigurate using a `UITextField` between minimum and maximum values, and an optional regular expression validating input.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) float shotAccuracy;
@end

@implementation Configuration
FLOAT_PROPERTY_EDIT(shotAccuracy, -2.1, 4.1, @"", @"Shot accuracy");
...
```

#### float list implementation

`FLOAT_PROPERTY_LIST(propertyName, description, ...)`

![FloatList](./Images/FloatList.png)

The `float` property can be changed in Appfigurate by allowing the user to select from a predefined list of valid choices.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) float rating;
@end

@implementation Configuration
FLOAT_PROPERTY_LIST(rating, @"Quality rating", @{@"Low":@10.0,@"Average":@50.0,@"Excellent":@95.0});
...
```

#### float editable list implementation

`FLOAT_PROPERTY_LIST_EDIT(propertyName, minValue, maxValue, regex, description, ...)`

![FloatListEdit](./Images/FloatListEdit.png)

The `float` property can be changed in Appfigurate by allowing the user to select from a predefined list of valid choices. The user can customize the list adding by additional values using a `UITextField` between minimum and maximum values, and an optional regular expression validating input.

> Objective-C example

```objc
@interface Configuration : APLConfiguration
@property(nonatomic, assign) float forwardServerTime;
@end

@implementation Configuration
FLOAT_PROPERTY_LIST_EDIT(forwardServerTime, 0.0, 366.0, @"^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\\.\\d+)?$", @"Forward server time (days)", @{@"7 days":@7.0,@"1 month":@30.0,@"1 Year":@365.0});
...
```
