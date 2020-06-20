// AppfigurateExampleUITests.swift
// AppfigurateExample Copyright© 2020; Electric Bolt Limited.
 
import XCTest
import AppfigurateLibrary

/**
* Appfigurate can be used to configure an iOS application undergoing UI testing.
* To setup, you must perform the following in your UI Testing bundle:
* 1. Link the AppfigurateLibrary static xcframework.
* 2. Add APLConfigurationClass (of type String) with the name of your
*    APLConfiguration subclass class name in Info.plist.
     e.g. `ExampleConfiguration`
* 3. Tick on your APLConfiguration subclass in target membership.
* 4. Ensure your APLConfiguration subclass allowInvalidSignatures method returns
     true.
* 5. Optionally add a UIInterruptionMonitor to automatically dismiss the
     Appfigurate alert, when the configuration is applied.
* 6. Get an instance of your APLConfiguration subclass and set properties.
* 7. Apply the resulting configuration to XCUIApplication and launch.
*/

class AppfigurateExampleUITests: XCTestCase {

    var config: ExampleConfiguration!
    var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
    
        // Automatically dismiss the Appfigurate "Configuration applied" dialog.
        addUIInterruptionMonitor(withDescription: "Appfigurate") { (alert) -> Bool in
            alert.buttons["OK"].tap()
            alert.buttons["Ignore"].tap()
            return true
        }
        
        config = APLConfiguration.shared() as? ExampleConfiguration
        app = XCUIApplication()
    }

    override func tearDown() {
    }

    func test_1_Reset() {
        app.launchArguments = config.automationLaunchArgumentsReset()
        app.launch()

        let cell = app.tables.cells.element(boundBy: 0)
        let text = cell.staticTexts.element(boundBy: 1)
        XCTAssertEqual(text.label, "true")
    }
    
    func test_2_Boolean_Value() {
        config.boolean = false
        app.launchArguments = config.automationLaunchArguments()
        app.launch()

        let cell = app.tables.cells.element(boundBy: 0)
        let text = cell.staticTexts.element(boundBy: 1)
        XCTAssertEqual(text.label, "false")
    }

    func test_3_String_TextField_Value() {
        config.string_Textfield = "thursday"
        app.launchArguments = config.automationLaunchArguments()
        app.launch()
        
        let cell = app.tables.cells.element(boundBy: 1)
        let text = cell.staticTexts.element(boundBy: 1)
        XCTAssertEqual(text.label, "thursday")
    }
    
    func test_4_Action() {
        app.launchArguments = config.automationLaunchArguments(withAction: "randomIntegers")
        app.launch()

        let cell = app.tables.cells.element(boundBy: 8)
        let text = cell.staticTexts.element(boundBy: 1)
        // The integer_Slider field should now be equal to some random value other
        // than the default number of 500.
        XCTAssertNotEqual(text.label, "500");
    }
    
}
