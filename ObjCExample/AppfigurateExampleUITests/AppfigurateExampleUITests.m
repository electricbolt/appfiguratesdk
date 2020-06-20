// AppfigurateExampleUITests.m
// AppfigurateExample Copyright© 2017; Electric Bolt Limited.

@import XCTest;
#import "ExampleConfiguration.h"
@import AppfigurateLibrary;

/**
 * Appfigurate can be used to configure an iOS application undergoing UI testing.
 * To setup, you must perform the following in your UI Testing bundle:
 * 1. Link the AppfigurateLibrary static xcframework.
 * 2. Add APLConfigurationClass (of type String) with the name of your
 *    APLConfiguration subclass class name in Info.plist.
 *    e.g. `ExampleConfiguration`
 * 3. Tick on your APLConfiguration subclass in target membership.
 * 4. Ensure your APLConfiguration subclass allowInvalidSignatures method
 *    returns YES.
 * 5. Optionally add a UIInterruptionMonitor to automatically dismiss the
 *    Appfigurate alert, when the configuration is applied.
 * 6. Get an instance of your APLConfiguration subclass and set properties.
 * 7. Apply the resulting configuration to XCUIApplication and launch.
 */

@interface AppfigurateExampleUITests : XCTestCase {
    ExampleConfiguration* config;
    XCUIApplication* app;
}
@end

@implementation AppfigurateExampleUITests

- (void)setUp {
    [super setUp];

    // Automatically dismiss the Appfigurate "Configuration applied" dialog.
    [self addUIInterruptionMonitorWithDescription: @"Appfigurate" handler: ^(XCUIElement *alert) {
        [alert.buttons[@"OK"] tap];
        [alert.buttons[@"Ignore"] tap];
        return YES;
    }];

    config = (ExampleConfiguration*) [APLConfiguration sharedConfiguration];
    app = [XCUIApplication new];
}

- (void)tearDown {
    [super tearDown];
}

- (void)test_1_Reset {
    app.launchArguments = [config automationLaunchArgumentsReset];
    [app launch];
    
    XCUIElement* cell = [app.tables.cells elementBoundByIndex: 0];
    XCUIElement* text = [cell.staticTexts elementBoundByIndex: 1];
    XCTAssertEqualObjects(text.label, @"YES");
}

- (void)test_2_Boolean_Value {
    config.boolean = NO;
    app.launchArguments = [config automationLaunchArguments];
    [app launch];

    XCUIElement* cell = [app.tables.cells elementBoundByIndex: 0];
    XCUIElement* text = [cell.staticTexts elementBoundByIndex: 1];
    XCTAssertEqualObjects(text.label, @"NO");
}

- (void)test_3_String_Textfield_Value {
    config.string_Textfield = @"thursday";
    app.launchArguments = [config automationLaunchArguments];
    [app launch];

    XCUIElement *cell = [app.tables.cells elementBoundByIndex: 1];
    XCUIElement *text = [cell.staticTexts elementBoundByIndex: 1];
    XCTAssertEqualObjects(text.label, @"thursday");
}

- (void)test_4_Action {
    app.launchArguments = [config automationLaunchArgumentsWithAction: @"randomIntegers"];
    [app launch];

    XCUIElement* cell = [app.tables.cells elementBoundByIndex: 8];
    XCUIElement* text = [cell.staticTexts elementBoundByIndex: 1];
    // The integer_Slider field should now be equal to some random value other
    // than the default number of 500.
    XCTAssertNotEqualObjects(text.label, @"500");
}

@end
