// InterfaceController.m
// WatchExample Extension Copyright© 2016; Electric Bolt Limited.

#import "InterfaceController.h"
#import "ExampleRow.h"
#import "ExampleConfiguration.h"

@interface InterfaceController() <APLConfigurationUpdated>

@property (weak, nonatomic) IBOutlet WKInterfaceTable *table;

@end

@implementation InterfaceController

- (void) awakeWithContext:(id)context {
    [super awakeWithContext:context];
    [self.table setNumberOfRows:26 withRowType:@"exampleRow"];
    APLAddConfigurationUpdatedListener(self);
    [self updateTable];
}

/**
 * Called when the application configuration is applied from the Appfigurate application.
 */
- (void) configurationUpdated:(NSNotification *)notification {
    [self updateTable];
}

- (void) updateTable {
    ExampleConfiguration *c = ((ExampleConfiguration*) [APLConfiguration sharedConfiguration]);

    // Boolean

    ExampleRow *r = [_table rowControllerAtIndex:0];
    [r.name setText: @"boolean"];
    [r.value setText: c.boolean ? @"YES":@"NO"];

    // String

    r = [_table rowControllerAtIndex:1];
    [r.name setText: @"string_Textfield"];
    [r.value setText: c.string_Textfield];

    r = [_table rowControllerAtIndex:2];
    [r.name setText: @"string_RegexTextfield"];
    [r.value setText: c.string_RegexTextfield];

    r = [_table rowControllerAtIndex:3];
    [r.name setText: @"string_List"];
    [r.value setText: c.string_List];

    r = [_table rowControllerAtIndex:4];
    [r.name setText: @"string_Textfield_List"];
    [r.value setText: c.string_Textfield_List];

    r = [_table rowControllerAtIndex:5];
    [r.name setText: @"string_RegexTextfield_List"];
    [r.value setText: c.string_RegexTextfield_List];

    r = [_table rowControllerAtIndex:6];
    [r.name setText: @"encrypted_string_Textfield_List"];
    [r.value setText: c.encrypted_string_Textfield_List];
    
    r = [_table rowControllerAtIndex:7];
    [r.name setText: @"encrypted_string_RegexTextfield_List"];
    [r.value setText: c.encrypted_string_RegexTextfield_List];

    // Integer

    r = [_table rowControllerAtIndex:8];
    [r.name setText: @"integer_Slider"];
    [r.value setText: [NSString stringWithFormat: @"%ld", (long) c.integer_Slider]];

    r = [_table rowControllerAtIndex:9];
    [r.name setText: @"integer_Textfield"];
    [r.value setText: [NSString stringWithFormat: @"%ld", (long) c.integer_Textfield]];

    r = [_table rowControllerAtIndex:10];
    [r.name setText: @"integer_RegexTextfield"];
    [r.value setText: [NSString stringWithFormat: @"%ld", (long) c.integer_RegexTextfield]];

    r = [_table rowControllerAtIndex:11];
    [r.name setText: @"integer_List"];
    [r.value setText: [NSString stringWithFormat: @"%ld", (long) c.integer_List]];

    r = [_table rowControllerAtIndex:12];
    [r.name setText: @"integer_Textfield_List"];
    [r.value setText: [NSString stringWithFormat: @"%ld", (long) c.integer_Textfield_List]];

    r = [_table rowControllerAtIndex:13];
    [r.name setText: @"integer_RegexTextfield_List"];
    [r.value setText: [NSString stringWithFormat: @"%ld", (long) c.integer_RegexTextfield_List]];

    // Float

    r = [_table rowControllerAtIndex:14];
    [r.name setText: @"float_Slider"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.float_Slider]];

    r = [_table rowControllerAtIndex:15];
    [r.name setText: @"float_Textfield"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.float_Textfield]];

    r = [_table rowControllerAtIndex:16];
    [r.name setText: @"float_RegexTextfield"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.float_RegexTextfield]];

    r = [_table rowControllerAtIndex:17];
    [r.name setText: @"float_List"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.float_List]];

    r = [_table rowControllerAtIndex:18];
    [r.name setText: @"float_Textfield_List"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.float_Textfield_List]];

    r = [_table rowControllerAtIndex:19];
    [r.name setText: @"float_RegexTextfield_List"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.float_RegexTextfield_List]];

    // Double

    r = [_table rowControllerAtIndex:20];
    [r.name setText: @"double_Slider"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.double_Slider]];

    r = [_table rowControllerAtIndex:21];
    [r.name setText: @"double_Textfield"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.double_Textfield]];

    r = [_table rowControllerAtIndex:22];
    [r.name setText: @"double_RegexTextfield"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.double_RegexTextfield]];

    r = [_table rowControllerAtIndex:23];
    [r.name setText: @"double_List"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.double_List]];

    r = [_table rowControllerAtIndex:24];
    [r.name setText: @"double_Textfield_List"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.double_Textfield_List]];

    r = [_table rowControllerAtIndex:25];
    [r.name setText: @"double_RegexTextfield_List"];
    [r.value setText: [NSString stringWithFormat: @"%0.3f", c.double_RegexTextfield_List]];
}

@end



