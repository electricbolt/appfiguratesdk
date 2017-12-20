/*******************************************************************************
 * AppfigurateExampleUITests.m                                                 *
 * AppfigurateExample Copyright© 2017; Electric Bolt Limited.                  *
 ******************************************************************************/

@import XCTest;
#import "ExampleConfiguration.h"

/**
 * Appfigurate can be used to configure an iOS application undergoing UI testing.
 * To setup, you must perform the following in your UI Testing bundle:
 * 1. Link the libAppfigurateLibrary.a file.
 * 2. Tick on your APLConfiguration subclass in target membership.
 * 3. Ensure your APLConfiguration subclass allowInvalidSignatures method returns YES.
 * 4. Optionally add a UIInterruptionMonitor to automatically dismiss the Appfigurate alert,
 *    when the configuration is applied.
 * 5. Create an instance of your APLConfiguration subclass and set properties.
 * 6. Apply the resulting configuration to XCUIApplication and launch.
 */

@interface AppfigurateExampleUITests : XCTestCase {
    XCUIApplication* app;
}
@end

@implementation AppfigurateExampleUITests

- (void)setUp {
    [super setUp];

    // Automatically dismiss the Appfigurate "Configuration applied" dialog.
    [self addUIInterruptionMonitorWithDescription: @"Appfigurate" handler: ^(XCUIElement *alert) {
        [alert.buttons[@"OK"] tap];
        return YES;
    }];

    ExampleConfiguration* c = [ExampleConfiguration new];
    c.boolean = NO;
    c.string_Textfield = @"thursday";

    app = [XCUIApplication new];
    app.launchArguments = [c automationLaunchArguments];
    [app launch];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testBoolean_Value {
     XCUIElement* cell = [app.tables.cells elementBoundByIndex: 0];
     XCTAssertTrue(cell.exists);
     XCUIElement* text = [cell.staticTexts elementBoundByIndex: 1];
     XCTAssertTrue(text.exists);
     XCTAssertEqualObjects(text.label, @"NO");
}

- (void)testString_Textfield_Value {
     XCUIElement *cell = [app.tables.cells elementBoundByIndex: 1];
     XCTAssertTrue(cell.exists);
     XCUIElement *text = [cell.staticTexts elementBoundByIndex: 1];
     XCTAssertTrue(text.exists);
     XCTAssertEqualObjects(text.label, @"thursday");
}

@end
