import Foundation

/**
 * This is a Swift compatible version of the Obj-C ExampleConfiguration.m
 * file. Using Xcode's Target Membership pane, you can link the Obj-C version instead by:
 * 1. ticking off Swift Example (iOS) for the file ExampleConfiguration.swift
 * 2. ticking on Swift Example (iOS) for the file ExampleConfiguration.m
 *
 * Swift subclasses of APLConfiguration must manually specify property 
 * implementations, unlike Obj-C subclasses which can use macros.
 */

class ExampleConfiguration: APLConfiguration {

    override init() {
        boolean = false
        integer_Slider = 0
        integer_Textfield = 0
        integer_RegexTextfield = 0
        integer_List = 0
        integer_Textfield_List = 0
        integer_RegexTextfield_List = 0
        float_Slider = 0.0
        float_Textfield = 0.0
        float_RegexTextfield = 0.0
        float_List = -50.0
        float_Textfield_List = 0.0
        float_RegexTextfield_List = 0.0
        double_Slider = 0.0
        double_Textfield = 0.0
        double_RegexTextfield = 0.0
        double_List = -50.0
        double_Textfield_List = 0.0
        double_RegexTextfield_List = 0.0
        super.init()
    }

    // boolean

    var boolean: Bool

    func booleanDescription() -> String {
        return "Bool - Boolean true or false"
    }

    // string_Textfield

    var string_Textfield: String?

    func string_TextfieldDescription() -> String {
        return "String - textfield"
    }

    func string_TextfieldRegex() -> String {
        return ""
    }

    // string_RegexTextfield

    var string_RegexTextfield: String?

    func string_RegexTextfieldDescription() -> String {
        return "String - textfield with regex"
    }

    func string_RegexTextfieldRegex() -> String {
        return "b[aeiou]t"
    }

    // string_List

    var string_List: String?

    func string_ListDescription() -> String {
        return "String - fixed list"
    }

    func string_ListValues() -> [String:Any] {
        return ["Small":"sm",
                "Medium":"md",
                "Large":"lg"]
    }

    // string_Textfield_List

    var string_Textfield_List: String?

    func string_Textfield_ListDescription() -> String {
        return "String - fixed list"
    }

    func string_Textfield_ListRegex() -> String {
        return ""
    }

    func string_Textfield_ListValues() -> [String:Any] {
        return ["Red":"r",
                "Green":"g",
                "Blue":"b"]
    }

    // string_RegexTextfield_List

    var string_RegexTextfield_List: String?

    func string_RegexTextfield_ListDescription() -> String {
        return "String - textfield with regex, customizable list"
    }

    func string_RegexTextfield_ListRegex() -> String {
        return "https://[\\w\\.-]+\\.appfigurate.io/.*"
    }

    func string_RegexTextfield_ListValues() -> [String:Any] {
        return ["Dev":"https://dev.appfigurate.io/list",
                "Test":"https://test.appfigurate.io/list",
                "Prod":"https://m.appfigurate.io/list"]
    }

    // integer_Slider

    var integer_Slider: Int

    func integer_SliderDescription() -> String {
        return "Integer - slider"
    }

    func integer_SliderMin() -> Int {
        return 0
    }

    func integer_SliderMax() -> Int {
        return 1000
    }

    func integer_SliderIcon() -> APLPredefinedIcon {
        return .iconSliderNumeric
    }

    // integer_Textfield

    var integer_Textfield: Int

    func integer_TextfieldDescription() -> String {
        return "Integer - textfield"
    }

    func integer_TextfieldMin() -> Int {
        return 10
    }

    func integer_TextfieldMax() -> Int {
        return 20
    }

    func integer_TextfieldRegex() -> String {
        return ""
    }

    // integer_RegexTextfield

    var integer_RegexTextfield: Int

    func integer_RegexTextfieldDescription() -> String {
        return "Integer - textfield with regex"
    }

    func integer_RegexTextfieldMin() -> Int {
        return 1
    }

    func integer_RegexTextfieldMax() -> Int {
        return 999
    }

    func integer_RegexTextfieldRegex() -> String {
        return "^([1-9]|[1-9][0-9]|[1-9][0-9][0-9])$"
    }

    // integer_List

    var integer_List: Int

    func integer_ListDescription() -> String {
        return "Integer - fixed list"
    }

    func integer_ListValues() -> [String:Any] {
        return ["None":-100,"Low":-50,"Zero":0,"High":50,"Urgent":100]
    }

    // integer_Textfield_List

    var integer_Textfield_List: Int

    func integer_Textfield_ListDescription() -> String {
        return "Integer - textfield, customizable list"
    }

    func integer_Textfield_ListMin() -> Int {
        return 0
    }

    func integer_Textfield_ListMax() -> Int {
        return 100
    }

    func integer_Textfield_ListRegex() -> String {
        return ""
    }

    func integer_Textfield_ListValues() -> [String:Any] {
        return ["Failed":0,
                "Pass":80,
                "Excellence":90]
    }

    // integer_RegexTextfield_List

    var integer_RegexTextfield_List: Int

    func integer_RegexTextfield_ListDescription() -> String {
        return "Integer - textfield with regex, customizable list"
    }

    func integer_RegexTextfield_ListMin() -> Int {
        return 0
    }

    func integer_RegexTextfield_ListMax() -> Int {
        return 365
    }

    func integer_RegexTextfield_ListRegex() -> String {
        return "^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])$"
    }

    func integer_RegexTextfield_ListValues() -> [String:Any] {
        return ["0 days":0,
                "1 month":30,
                "1 Year":365]
    }

    // float_Slider

    var float_Slider: Float

    func float_SliderDescription() -> String {
        return "Float - slider"
    }

    func float_SliderMin() -> Float {
        return 0.0
    }

    func float_SliderMax() -> Float {
        return 1000.0
    }

    func float_SliderIcon() -> APLPredefinedIcon {
        return .iconSliderVolume
    }

    // float_Textfield

    var float_Textfield: Float

    func float_TextfieldDescription() -> String {
        return "Float - textfield"
    }

    func float_TextfieldMin() -> Float {
        return 10.0
    }

    func float_TextfieldMax() -> Float {
        return 20.0
    }

    func float_TextfieldRegex() -> String {
        return ""
    }

    // float_RegexTextfield

    var float_RegexTextfield: Float

    func float_RegexTextfieldDescription() -> String {
        return "Float - textfield with regex"
    }

    func float_RegexTextfieldMin() -> Float {
        return 5.0
    }

    func float_RegexTextfieldMax() -> Float {
        return 250.0
    }

    func float_RegexTextfieldRegex() -> String {
        return "^(?:[1-9]\\d*|0)?(?:\\.\\d+)?$"
    }

    // float_List

    var float_List: Float

    func float_ListDescription() -> String {
        return "Float - fixed list"
    }

    func float_ListValues() -> [String:Any] {
        return ["None":-100.0,"Low":-50.0,"Zero":0.0,"High":50.0,"Urgent":100.0]
    }

    // float_Textfield_List

    var float_Textfield_List: Float

    func float_Textfield_ListDescription() -> String {
        return "Float - textfield, customizable list"
    }

    func float_Textfield_ListMin() -> Float {
        return 0.0
    }

    func float_Textfield_ListMax() -> Float {
        return 100.0
    }

    func float_Textfield_ListRegex() -> String {
        return ""
    }

    func float_Textfield_ListValues() -> [String:Any] {
        return ["Failed":0.0,
                "Pass":80.0,
                "Excellence":90.0]
    }

    // float_RegexTextfield_List

    var float_RegexTextfield_List: Float

    func float_RegexTextfield_ListDescription() -> String {
        return "Float - textfield with regex, customizable list"
    }

    func float_RegexTextfield_ListMin() -> Float {
        return 0.0
    }

    func float_RegexTextfield_ListMax() -> Float {
        return 366.0
    }

    func float_RegexTextfield_ListRegex() -> String {
        return "^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\\.\\d+)?$"
    }

    func float_RegexTextfield_ListValues() -> [String:Any] {
        return ["0 days":0.0,
                "1 month":30.0,
                "1 Year":365.0]
    }

    // double_Slider

    var double_Slider: Double

    func double_SliderDescription() -> String {
        return "Double - slider"
    }

    func double_SliderMin() -> Double {
        return 0.0
    }

    func double_SliderMax() -> Double {
        return 1000.0
    }

    func double_SliderIcon() -> APLPredefinedIcon {
        return .iconSliderBrightness
    }

    // double_Textfield

    var double_Textfield: Double

    func double_TextfieldDescription() -> String {
        return "Double - textfield"
    }

    func double_TextfieldMin() -> Double {
        return 10.0
    }

    func double_TextfieldMax() -> Double {
        return 20.0
    }

    func double_TextfieldRegex() -> String {
        return ""
    }

    // double_RegexTextfield

    var double_RegexTextfield: Double

    func double_RegexTextfieldDescription() -> String {
        return "Double - textfield with regex"
    }

    func double_RegexTextfieldMin() -> Double {
        return 5.0
    }

    func double_RegexTextfieldMax() -> Double {
        return 250.0
    }

    func double_RegexTextfieldRegex() -> String {
        return "^(?:[1-9]\\d*|0)?(?:\\.\\d+)?$"
    }

    // double_List

    var double_List: Double

    func double_ListDescription() -> String {
        return "Double - fixed list"
    }

    func double_ListValues() -> [String:Any] {
        return ["None":-100.0,"Low":-50.0,"Zero":0.0,"High":50.0,"Urgent":100.0]
    }

    // double_Textfield_List

    var double_Textfield_List: Double

    func double_Textfield_ListDescription() -> String {
        return "Double - textfield, customizable list"
    }

    func double_Textfield_ListMin() -> Double {
        return 0.0
    }

    func double_Textfield_ListMax() -> Double {
        return 100.0
    }

    func double_Textfield_ListRegex() -> String {
        return ""
    }

    func double_Textfield_ListValues() -> [String:Any] {
        return ["Failed":0.0,
                "Pass":80.0,
                "Excellence":90.0]
    }

    // double_RegexTextfield_List

    var double_RegexTextfield_List: Double

    func double_RegexTextfield_ListDescription() -> String {
        return "Double - textfield with regex, customizable list"
    }

    func double_RegexTextfield_ListMin() -> Double {
        return 0.0
    }

    func double_RegexTextfield_ListMax() -> Double {
        return 366.0
    }

    func double_RegexTextfield_ListRegex() -> String {
        return "^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\\.\\d+)?$"
    }

    func double_RegexTextfield_ListValues() -> [String:Any] {
        return ["0 days":0.0,
                "1 month":30.0,
                "1 Year":365.0]
    }

    /**
     * Paste your publicKey here that you exported from the Appfigurate app on your
     * device or simulator.
     */

    override func publicKey() -> String {
        return "-----BEGIN PUBLIC KEY-----\n" +
            "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5s2YXfKStHzgUEkY+KDm\n" +
            "yQUMO617+xo2tv5DF4M38emK7XpLR/ILLFiAiIHyRAdw9+wB80OEzek+bihwHWCs\n" +
            "WU0inAJ7gBLRqv7MHhPP4+XBbeizpLblPdBVVL1az5I3oDptpemIikAZrA37ZAH/\n" +
            "shk9C/wGogiQC4p60LmxbzI/+eYvI2x0M/Xxxpedcq6yRyHb+u+0ziNHoji5M6Qh\n" +
            "kcsailsMqANaN7VcO5NLPT3PzIc6WPG3iVJ0I8iCzXY/QNxOAtWc5t4CyB8+Z+fU\n" +
            "IEk9qAYiidZhpPb1gdJl4LN14qjBqYAmmJAo9oAabujlGmvxKQfR3Mj1FDd1GYab\n" +
            "6QIDAQAB\n" +
            "-----END PUBLIC KEY-----\n"
    }

    override func reset() {
        boolean = true
        string_Textfield = "tuesday"
        string_RegexTextfield = "bot"
        string_List = "sm"
        string_Textfield_List = "g"
        string_RegexTextfield_List = "https://test.appfigurate.io/list"
        integer_Slider = 500
        integer_Textfield = 10
        integer_RegexTextfield = 500
        integer_List = 0
        integer_Textfield_List = 80
        integer_RegexTextfield_List = 30
        float_Slider = 950.0
        float_Textfield = 12.0
        float_RegexTextfield = 5.95
        float_List = -50.0
        float_Textfield_List = 20.995
        float_RegexTextfield_List = 360.1
        double_Slider = 950.0
        double_Textfield = 12.0
        double_RegexTextfield = 5.95
        double_List = -50.0
        double_Textfield_List = 20.995
        double_RegexTextfield_List = 360.1
    }

}
