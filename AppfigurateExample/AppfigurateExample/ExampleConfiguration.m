/*******************************************************************************
 * ExampleConfiguration.m                                                      *
 * AppfigurateExample Copyright© 2013; Electric Bolt Limited.                  *
 ******************************************************************************/

// See also ExampleConfiguration.swift file

#import "ExampleConfiguration.h"

@implementation ExampleConfiguration

BOOL_PROPERTY(boolean, @"BOOL - Boolean YES or NO")

STRING_PROPERTY_EDIT(string_Textfield, @"", @"NSString - textfield");
STRING_PROPERTY_EDIT(string_RegexTextfield, @"b[aeiou]t", @"NSString - textfield with regex");
STRING_PROPERTY_LIST(string_List, @"NSString - fixed list", @{@"Small":@"sm", @"Medium":@"md", @"Large":@"lg"});
STRING_PROPERTY_LIST_EDIT(string_Textfield_List, @"", @"NSString - textfield, customizable list", @{@"Red":@"r", @"Green":@"g", @"Blue":@"b"});
STRING_PROPERTY_LIST_EDIT(string_RegexTextfield_List, @"https://[\\w\\.-]+\\.appfigurate.io/.*", @"NSString - textfield with regex, customizable list", @{@"Dev":@"https://dev.appfigurate.io/list", @"Test":@"https://test.appfigurate.io/list", @"Prod":@"https://m.appfigurate.io/list"});

INT_PROPERTY_SLIDER(integer_Slider, 0, 1000, APLIconSliderNumeric, @"Integer - slider");
INT_PROPERTY_EDIT(integer_Textfield, 10, 20, @"", @"Integer - textfield");
INT_PROPERTY_EDIT(integer_RegexTextfield, 1, 999, @"^([1-9]|[1-9][0-9]|[1-9][0-9][0-9])$", @"Integer - textfield with regex");
INT_PROPERTY_LIST(integer_List, @"Integer - fixed list", @{@"None":@-100,@"Low":@-50,@"Zero":@0,@"High":@50,@"Urgent":@100});
INT_PROPERTY_LIST_EDIT(integer_Textfield_List, 0, 100, @"", @"Integer - textfield, customizable list", @{@"Failed":@0,@"Pass":@80,@"Excellence":@90});
INT_PROPERTY_LIST_EDIT(integer_RegexTextfield_List, 0, 365, @"^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])$", @"Integer - textfield with regex, customizable list", @{@"0 days":@0,@"1 month":@30,@"1 Year":@365});

FLOAT_PROPERTY_SLIDER(float_Slider, 0.0, 1000.0, APLIconSliderVolume, @"Float - slider");
FLOAT_PROPERTY_EDIT(float_Textfield, 10.0, 20.0, @"", @"Float - textfield");
FLOAT_PROPERTY_EDIT(float_RegexTextfield, 5.0, 250.0, @"^(?:[1-9]\\d*|0)?(?:\\.\\d+)?$", @"Float - textfield with regex");
FLOAT_PROPERTY_LIST(float_List, @"Float - fixed list", @{@"None":@-100.0,@"Low":@-50.0,@"Zero":@0.0,@"High":@50.0,@"Urgent":@100.0});
FLOAT_PROPERTY_LIST_EDIT(float_Textfield_List, 0.0, 100.0, @"", @"Float - textfield, customizable list", @{@"Failed":@0.0,@"Pass":@80.0,@"Excellence":@90.0});
FLOAT_PROPERTY_LIST_EDIT(float_RegexTextfield_List, 0.0, 366.0, @"^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\\.\\d+)?$", @"Float - textfield with regex, customizable list", @{@"0 days":@0.0,@"1 month":@30.0,@"1 Year":@365.0});

DOUBLE_PROPERTY_SLIDER(double_Slider, 0.0, 1000.0, APLIconSliderBrightness, @"Double - slider");
DOUBLE_PROPERTY_EDIT(double_Textfield, 10.0, 20.0, @"", @"Double - textfield");
DOUBLE_PROPERTY_EDIT(double_RegexTextfield, 5.0, 250.0, @"^(?:[1-9]\\d*|0)?(?:\\.\\d+)?$", @"Double - textfield with regex");
DOUBLE_PROPERTY_LIST(double_List, @"Double - fixed list", @{@"None":@-100.0,@"Low":@-50.0,@"Zero":@0.0,@"High":@50.0,@"Urgent":@100.0});
DOUBLE_PROPERTY_LIST_EDIT(double_Textfield_List, 0.0, 100.0, @"", @"Double - textfield, customizable list", @{@"Failed":@0.0,@"Pass":@80.0,@"Excellence":@90.0});
DOUBLE_PROPERTY_LIST_EDIT(double_RegexTextfield_List, 0.0, 366.0, @"^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\\.\\d+)?$", @"Double - textfield with regex, customizable list", @{@"0 days":@0.0,@"1 month":@30.0,@"1 Year":@365.0});

- (BOOL) allowInvalidSignatures {
#if DEBUG
    return YES;
#else
    return NO;
#endif
}

/**
 * Paste your publicKey here that you exported from the Appfigurate app on your
 * device or simulator.
 */

- (NSString*) publicKey {
#if TARGET_OS_IOS
    return @"-----BEGIN PUBLIC KEY-----\n" \
        "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5s2YXfKStHzgUEkY+KDm\n" \
        "yQUMO617+xo2tv5DF4M38emK7XpLR/ILLFiAiIHyRAdw9+wB80OEzek+bihwHWCs\n" \
        "WU0inAJ7gBLRqv7MHhPP4+XBbeizpLblPdBVVL1az5I3oDptpemIikAZrA37ZAH/\n" \
        "shk9C/wGogiQC4p60LmxbzI/+eYvI2x0M/Xxxpedcq6yRyHb+u+0ziNHoji5M6Qh\n" \
        "kcsailsMqANaN7VcO5NLPT3PzIc6WPG3iVJ0I8iCzXY/QNxOAtWc5t4CyB8+Z+fU\n" \
        "IEk9qAYiidZhpPb1gdJl4LN14qjBqYAmmJAo9oAabujlGmvxKQfR3Mj1FDd1GYab\n" \
        "6QIDAQAB\n" \
        "-----END PUBLIC KEY-----\n";
#elif TARGET_OS_WATCH
    return @"-----BEGIN PUBLIC KEY-----\n" \
        "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5s2YXfKStHzgUEkY+KDm\n" \
        "yQUMO617+xo2tv5DF4M38emK7XpLR/ILLFiAiIHyRAdw9+wB80OEzek+bihwHWCs\n" \
        "WU0inAJ7gBLRqv7MHhPP4+XBbeizpLblPdBVVL1az5I3oDptpemIikAZrA37ZAH/\n" \
        "shk9C/wGogiQC4p60LmxbzI/+eYvI2x0M/Xxxpedcq6yRyHb+u+0ziNHoji5M6Qh\n" \
        "kcsailsMqANaN7VcO5NLPT3PzIc6WPG3iVJ0I8iCzXY/QNxOAtWc5t4CyB8+Z+fU\n" \
        "IEk9qAYiidZhpPb1gdJl4LN14qjBqYAmmJAo9oAabujlGmvxKQfR3Mj1FDd1GYab\n" \
        "6QIDAQAB\n" \
        "-----END PUBLIC KEY-----\n";
#endif
}

- (void) reset {
    self.boolean = YES;
    self.string_Textfield = @"tuesday";
    self.string_RegexTextfield = @"bot";
    self.string_List = @"sm";
    self.string_Textfield_List = @"g";
    self.string_RegexTextfield_List = @"https://test.appfigurate.io/list";
    self.integer_Slider = 500;
    self.integer_Textfield = 10;
    self.integer_RegexTextfield = 500;
    self.integer_List = 0;
    self.integer_Textfield_List = 80;
    self.integer_RegexTextfield_List = 30;
    self.float_Slider = 950.0;
    self.float_Textfield = 12.0;
    self.float_RegexTextfield = 5.95;
    self.float_List = -50.0;
    self.float_Textfield_List = 20.995;
    self.float_RegexTextfield_List = 360.1;
    self.double_Slider = 950.0;
    self.double_Textfield = 12.0;
    self.double_RegexTextfield = 5.95;
    self.double_List = -50.0;
    self.double_Textfield_List = 20.995;
    self.double_RegexTextfield_List = 360.1;
}

/**
 * You can manually specify property implementations if you need more control.
 * Comment out the macro line STRING_PROPERTY_LIST_EDIT(string_RegexTextfield_List, ...
 * above, and then uncomment the following lines below and recompile.
 */

//- (NSString*) string_RegexTextfield_ListDescription {
//    return @"NSString - textfield with regex, customizable list";
//}
//
//- (NSString*) string_RegexTextfield_ListRegex {
//    return @"https://[\\w\\.-]+\\.appfigurate.io/.*";
//}
//
//- (NSDictionary*) string_RegexTextfield_ListValues {
//    return @{@"Dev":@"https://dev.appfigurate.io/list",
//             @"Test":@"https://test.appfigurate.io/list",
//             @"Prod":@"https://m.appfigurate.io/list"};
//}

@end
