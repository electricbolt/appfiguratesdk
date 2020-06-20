// InterfaceController.h
// WatchExample Extension Copyright© 2020; Electric Bolt Limited.

import Foundation
import WatchKit
import AppfigurateLibrary

public class InterfaceController: WKInterfaceController, APLConfigurationUpdated {

    @IBOutlet var table: WKInterfaceTable!

    public override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        table.setNumberOfRows(26, withRowType: "exampleRow")
        APLAddConfigurationUpdatedListener(self)
        updateTable()
    }
    
    public func configurationUpdated(_ notification: Notification?) {
        updateTable()
    }
    
    public func updateTable() {
        let c = APLConfiguration.shared() as! ExampleConfiguration
        
        // Boolean
        
        var r = table.rowController(at: 0) as! ExampleRow
        r.name.setText("boolean")
        r.value.setText(c.boolean ? "true" : "false")
        
        // String
        
        r = table.rowController(at: 1) as! ExampleRow
        r.name.setText("string_Textfield")
        r.value.setText(c.string_Textfield)
        
        r = table.rowController(at: 2) as! ExampleRow
        r.name.setText("string_RegexTextfield")
        r.value.setText(c.string_RegexTextfield)

        r = table.rowController(at: 3) as! ExampleRow
        r.name.setText("string_List")
        r.value.setText(c.string_List)

        r = table.rowController(at: 4) as! ExampleRow
        r.name.setText("string_Textfield_List")
        r.value.setText(c.string_Textfield_List)

        r = table.rowController(at: 5) as! ExampleRow
        r.name.setText("string_RegexTextfield_List")
        r.value.setText(c.string_RegexTextfield_List)

        r = table.rowController(at: 6) as! ExampleRow
        r.name.setText("encrypted_string_Textfield_List")
        r.value.setText(c.encrypted_string_Textfield_List)

        r = table.rowController(at: 7) as! ExampleRow
        r.name.setText("encrypted_string_RegexTextfield_List")
        r.value.setText(c.encrypted_string_RegexTextfield_List)

        // Integer
        
        r = table.rowController(at: 8) as! ExampleRow
        r.name.setText("integer_Slider")
        r.value.setText("\(c.integer_Slider)")

        r = table.rowController(at: 9) as! ExampleRow
        r.name.setText("integer_Textfield")
        r.value.setText("\(c.integer_Textfield)")

        r = table.rowController(at: 10) as! ExampleRow
        r.name.setText("integer_RegexTextfield")
        r.value.setText("\(c.integer_RegexTextfield)")

        r = table.rowController(at: 11) as! ExampleRow
        r.name.setText("integer_List")
        r.value.setText("\(c.integer_List)")

        r = table.rowController(at: 12) as! ExampleRow
        r.name.setText("integer_Textfield_List")
        r.value.setText("\(c.integer_Textfield_List)")

        r = table.rowController(at: 13) as! ExampleRow
        r.name.setText("integer_RegexTextfield_List")
        r.value.setText("\(c.integer_RegexTextfield_List)")

        // Float
        
        r = table.rowController(at: 14) as! ExampleRow
        r.name.setText("float_Slider")
        r.value.setText("\(c.float_Slider)")

        r = table.rowController(at: 15) as! ExampleRow
        r.name.setText("float_Textfield")
        r.value.setText("\(c.float_Textfield)")

        r = table.rowController(at: 16) as! ExampleRow
        r.name.setText("float_RegexTextfield")
        r.value.setText("\(c.float_RegexTextfield)")

        r = table.rowController(at: 17) as! ExampleRow
        r.name.setText("float_List")
        r.value.setText("\(c.float_List)")

        r = table.rowController(at: 18) as! ExampleRow
        r.name.setText("float_Textfield_List")
        r.value.setText("\(c.float_Textfield_List)")

        r = table.rowController(at: 19) as! ExampleRow
        r.name.setText("float_RegexTextfield_List")
        r.value.setText("\(c.float_RegexTextfield_List)")
        
        // Double
        
        r = table.rowController(at: 20) as! ExampleRow
        r.name.setText("double_Slider")
        r.value.setText("\(c.double_Slider)")

        r = table.rowController(at: 21) as! ExampleRow
        r.name.setText("double_Textfield")
        r.value.setText("\(c.double_Textfield)")

        r = table.rowController(at: 22) as! ExampleRow
        r.name.setText("double_RegexTextfield")
        r.value.setText("\(c.double_RegexTextfield)")

        r = table.rowController(at: 23) as! ExampleRow
        r.name.setText("double_List")
        r.value.setText("\(c.double_List)")

        r = table.rowController(at: 24) as! ExampleRow
        r.name.setText("double_Textfield_List")
        r.value.setText("\(c.double_Textfield_List)")

        r = table.rowController(at: 25) as! ExampleRow
        r.name.setText("double_RegexTextfield_List")
        r.value.setText("\(c.double_RegexTextfield_List)")
    }
    
}
