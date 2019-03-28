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

@objc class ExampleConfiguration: APLConfiguration {

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

    @objc var boolean: Bool

    @objc func booleanDescription() -> String {
        return "Bool - Boolean true or false"
    }

    // string_Textfield

    @objc var string_Textfield: String?

    @objc func string_TextfieldDescription() -> String {
        return "String - textfield"
    }

    @objc func string_TextfieldRegex() -> String {
        return ""
    }

    // string_RegexTextfield

    @objc var string_RegexTextfield: String?

    @objc func string_RegexTextfieldDescription() -> String {
        return "String - textfield with regex"
    }

    @objc func string_RegexTextfieldRegex() -> String {
        return "b[aeiou]t"
    }

    // string_List

    @objc var string_List: String?

    @objc func string_ListDescription() -> String {
        return "String - fixed list"
    }

    @objc func string_ListValues() -> [String:Any] {
        return ["Small":"sm",
                "Medium":"md",
                "Large":"lg"]
    }

    // string_Textfield_List

    @objc var string_Textfield_List: String?

    @objc func string_Textfield_ListDescription() -> String {
        return "String - fixed list"
    }

    @objc func string_Textfield_ListRegex() -> String {
        return ""
    }

    @objc func string_Textfield_ListValues() -> [String:Any] {
        return ["Red":"r",
                "Green":"g",
                "Blue":"b"]
    }

    // string_RegexTextfield_List

    @objc var string_RegexTextfield_List: String?

    @objc func string_RegexTextfield_ListDescription() -> String {
        return "String - textfield with regex, customizable list"
    }

    @objc func string_RegexTextfield_ListRegex() -> String {
        return "https://[\\w\\.-]+\\.appfigurate.io/.*"
    }

    @objc func string_RegexTextfield_ListValues() -> [String:Any] {
        return ["Dev":"https://dev.appfigurate.io/list",
                "Test":"https://test.appfigurate.io/list",
                "Prod":"https://m.appfigurate.io/list"]
    }

    // encrypted_string_Textfield_List
    
    @objc var encrypted_string_Textfield_List: String?
    
    @objc func encrypted_string_Textfield_ListDescription() -> String {
        return "encrypted NSString - textfield, customizable list"
    }
    
    @objc func encrypted_string_Textfield_ListRegex() -> String {
        return ""
    }
    
    @objc func encrypted_string_Textfield_ListValues() -> [String:Any] {
#if DEBUG
        return ["Red":"r",
                "Green":"g",
                "Blue":"b"]
#else
        return ["Red":"BfWFC9+uwGtJJyUor63rCdKSpwupWClDQLxKP9id9d4l7N/SNtblZiui2K5z1VzywHizCdK08M2hjkZcf5XVSx71IKHMyO/t14z1IbiFbsB3zUzJ5LbfnAME8UmBv/X7LM6WbsPBcQTKOadbqViI9b82hGTMtC9Z4Mm7E01MyKg0XtU31ZbCgwp74xAkRXPANJ0aOcS9PLs9S7HIy3ZoFjp1b47oVOUlSpqq+3Tdp17I9jhqIXSyyk5/ugTEJVHPTVKa6Y6VC0qCrWPTQptq4MmxJO8Ur9Pwo/bw2MGvz9UBFe8QLlPAfc0AW+2DlkIa3ZENNqOkJJj22G+dtHmg3XLkI7IUh29K8MeUwJFGKwIB",
                "Green":"NtVZZs0/y3qgURpQlE6nWC7HDwBow6SdQmo2b4kyjAEXzi8ODlGMzwacfNXVFKUkd5T8UcLdMBX9QOuhA4NC+dvPh1K5kAOwdTH4I+OIwu0rv0OHgtmjpKMBeGktaKC4PMATPcM4UZLxMusRqyAQIn+OOZOpGkhblMOnu6GkO6jLcDL+b27orwlcG8j95juA/CZv7KRVO6TJzmg7WG727liDxpaV9+J7cymhUHTFGmuBWabtP9JukBFtBBnIJhQiiJ037yOZK5elldmmKdSQuzXoc0iu1epKppwIjbDJCSbIhkks+m9J3T4UeH5KjQqAD4PWBcrypAYsgY2yzl1GROsAwyrbQcA4p8GumC7ot8YB",
                "Blue":"GaQjYf3oLLoGn1pqKbdzofZ4iAyKDyA00nFD1fzzpCFCLEVs0Y02va6VuNDaWsH+c2fhhgIPG5/yoYVIJAehsv5Ootf/IP3+6gxX8Oh0Y8LeZ+ut4j4qEtgZhDYOJjQV/vvnVihabu0GSFv5ZnpXEamO61TmZIj7+rUlEkYzv3e3DloCLoBI5/8FkkEmATz7hXNkHBcNgA/Mx6Rm6AqGlmFJFIKlnMUivBqxwkiertCEHI9rpj7RaiJEliUMz6Z63h6bLB3rPeNQfA53I+lo8cBVhGE+8p8gao97g2gWs2sn+KJthU3OWRCW+NrYgHVNE1mvT3Tc5omUHZ8NcuZOyGpmOKoIu07izBriuUtgGbYB"]
#endif
    }

#if !DEBUG
    @objc func encrypted_string_Textfield_ListEncrypted() -> Bool {
        return true
    }
#endif

    // encrypted_string_RegexTextfield_List
    
    @objc var encrypted_string_RegexTextfield_List: String?
    
    @objc func encrypted_string_RegexTextfield_ListDescription() -> String {
        return "encrypted NSString - textfield with regex, customizable list"
    }
    
    @objc func encrypted_string_RegexTextfield_ListRegex() -> String {
        return "https://[\\w\\.-]+\\.appfigurate.io/.*"
    }
    
    @objc func encrypted_string_RegexTextfield_ListValues() -> [String:Any] {
#if DEBUG
        return ["Dev":"https://dev.appfigurate.io/list",
                "Test":"https://test.appfigurate.io/list",
                "Prod":"https://m.appfigurate.io/list"]
#else
        return ["Dev":"H7o9Lgqd4RgMJLXnv3Yb/TihVKm1jM9X0U37Z0yDT3tDPHb6itJ4PieRbyux6PUm+Uv2lCOShohmWnghXIyp+DQBIjhuTa9PNbFELtYaO3iRpYWXPm/DFbeE8Zk7AK54oibkyqwy55QfCybL080ci5gpXhCt9CMNDjkatrnz+nhetv4mlhirRoix5UH0Fwxd4xNEjynIrLKOPGXmI9WuD9XiIo8qvyIsbnsIPL7Ul0hZ+X+SOjTdNSXFxJB9hH6bharBwtpV17RrgIezv90FFMs8/LRqtJ99bmfn11oZm5pilVkdT1dCfCbHds+FL8l1ouHhe0vPlC9WcxfxNbUQ/DBlTpTlPVSFkh9w7pps1wfXd3QoPGDJDrtJQGh8DiiSAQ==",
                "Test":"PL+UtWB9WHuO7jx6v5ntCVUVoKH1Bp8rSmssTb+yGvpAidug7uNofSb3xlQyzDToFQhrmlf0BSw8iLlGFv9IJxRZhkj8+ulYWeUnmW8ju1eN69iqCpQpd8+fxidHFqAlyCowSrXxJ49K7XQK5p8Hf1mNUiS01eDmv4Fkw1LnNuEUtIyHbfkgU1W7Glb9fMFTi23dN+P3mm3vqztUDOLlKX2Cff4yqO0uzlrE/Pvs2xVg4WLbLNfCgRs50098/03u1hBlDupyjzre3T7dQQWROyHdKrIr4GMODjZciPTGI4b97+ekan1gW18FkKmTaEPd+ReTMvbcydCPk/PgaM7fa2SpclcDcKaBfjsDIFWhz8YGR2q4zOfb4VXoyS3MGqxPN5WqveAqA7aX5BdNqEcbmQE=",
                "Prod":"IxrJFFUarMg6pz3laaFKJ/X8P5KCNGjOk/dcKC35ELw5s69HBRYHQitt+EH7BhvRYmpIS/U8M5x2/xqHL00e7Zqi4rbdhrcSJGAbNxjLIEvuWkyJKVwy4esfruPydN/QCeupXZ0+53hufLBQ8JFCudreqntAGns53M/K/qnAjVyVHikFy/Uf193Y5D2DVwzdlnahNTQaKnkY1cs+p1U8J5dh2Ebk1k7rZguH/jF0Q0yjjorDhU9n4BE9LGPHI1BIH7w/EA0l+1iKNELbx4vv5YBQ5eGMxlPI7ezIwufMDZ27plPkR35bJZI9q99FEuP4wg1BUr8gc+Np/+ouS2Agchm/qU0ONYT/ncQ2zDF4UW6dZk9dlG6PBE7OWYOC2uJ1AQ=="]
#endif
    }
    
#if !DEBUG
    @objc func encrypted_string_RegexTextfield_ListEncrypted() -> Bool {
        return true
    }
#endif
    
    // integer_Slider

    @objc var integer_Slider: Int

    @objc func integer_SliderDescription() -> String {
        return "Integer - slider"
    }

    @objc func integer_SliderMin() -> Int {
        return 0
    }

    @objc func integer_SliderMax() -> Int {
        return 1000
    }

    @objc func integer_SliderIcon() -> APLPredefinedIcon {
        return .iconSliderNumeric
    }

    // integer_Textfield

    @objc var integer_Textfield: Int

    @objc func integer_TextfieldDescription() -> String {
        return "Integer - textfield"
    }

    @objc func integer_TextfieldMin() -> Int {
        return 10
    }

    @objc func integer_TextfieldMax() -> Int {
        return 20
    }

    @objc func integer_TextfieldRegex() -> String {
        return ""
    }

    // integer_RegexTextfield

    @objc var integer_RegexTextfield: Int

    @objc func integer_RegexTextfieldDescription() -> String {
        return "Integer - textfield with regex"
    }

    @objc func integer_RegexTextfieldMin() -> Int {
        return 1
    }

    @objc func integer_RegexTextfieldMax() -> Int {
        return 999
    }

    @objc func integer_RegexTextfieldRegex() -> String {
        return "^([1-9]|[1-9][0-9]|[1-9][0-9][0-9])$"
    }

    // integer_List

    @objc var integer_List: Int

    @objc func integer_ListDescription() -> String {
        return "Integer - fixed list"
    }

    @objc func integer_ListValues() -> [String:Any] {
        return ["None":-100,"Low":-50,"Zero":0,"High":50,"Urgent":100]
    }

    // integer_Textfield_List

    @objc var integer_Textfield_List: Int

    @objc func integer_Textfield_ListDescription() -> String {
        return "Integer - textfield, customizable list"
    }

    @objc func integer_Textfield_ListMin() -> Int {
        return 0
    }

    @objc func integer_Textfield_ListMax() -> Int {
        return 100
    }

    @objc func integer_Textfield_ListRegex() -> String {
        return ""
    }

    @objc func integer_Textfield_ListValues() -> [String:Any] {
        return ["Failed":0,
                "Pass":80,
                "Excellence":90]
    }

    // integer_RegexTextfield_List

    @objc var integer_RegexTextfield_List: Int

    @objc func integer_RegexTextfield_ListDescription() -> String {
        return "Integer - textfield with regex, customizable list"
    }

    @objc func integer_RegexTextfield_ListMin() -> Int {
        return 0
    }

    @objc func integer_RegexTextfield_ListMax() -> Int {
        return 365
    }

    @objc func integer_RegexTextfield_ListRegex() -> String {
        return "^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])$"
    }

    @objc func integer_RegexTextfield_ListValues() -> [String:Any] {
        return ["0 days":0,
                "1 month":30,
                "1 Year":365]
    }

    // float_Slider

    @objc var float_Slider: Float

    @objc func float_SliderDescription() -> String {
        return "Float - slider"
    }

    @objc func float_SliderMin() -> Float {
        return 0.0
    }

    @objc func float_SliderMax() -> Float {
        return 1000.0
    }

    @objc func float_SliderIcon() -> APLPredefinedIcon {
        return .iconSliderVolume
    }

    // float_Textfield

    @objc var float_Textfield: Float

    @objc func float_TextfieldDescription() -> String {
        return "Float - textfield"
    }

    @objc func float_TextfieldMin() -> Float {
        return 10.0
    }

    @objc func float_TextfieldMax() -> Float {
        return 20.0
    }

    @objc func float_TextfieldRegex() -> String {
        return ""
    }

    // float_RegexTextfield

    @objc var float_RegexTextfield: Float

    @objc func float_RegexTextfieldDescription() -> String {
        return "Float - textfield with regex"
    }

    @objc func float_RegexTextfieldMin() -> Float {
        return 5.0
    }

    @objc func float_RegexTextfieldMax() -> Float {
        return 250.0
    }

    @objc func float_RegexTextfieldRegex() -> String {
        return "^(?:[1-9]\\d*|0)?(?:\\.\\d+)?$"
    }

    // float_List

    @objc var float_List: Float

    @objc func float_ListDescription() -> String {
        return "Float - fixed list"
    }

    @objc func float_ListValues() -> [String:Any] {
        return ["None":-100.0,"Low":-50.0,"Zero":0.0,"High":50.0,"Urgent":100.0]
    }

    // float_Textfield_List

    @objc var float_Textfield_List: Float

    @objc func float_Textfield_ListDescription() -> String {
        return "Float - textfield, customizable list"
    }

    @objc func float_Textfield_ListMin() -> Float {
        return 0.0
    }

    @objc func float_Textfield_ListMax() -> Float {
        return 100.0
    }

    @objc func float_Textfield_ListRegex() -> String {
        return ""
    }

    @objc func float_Textfield_ListValues() -> [String:Any] {
        return ["Failed":0.0,
                "Pass":80.0,
                "Excellence":90.0]
    }

    // float_RegexTextfield_List

    @objc var float_RegexTextfield_List: Float

    @objc func float_RegexTextfield_ListDescription() -> String {
        return "Float - textfield with regex, customizable list"
    }

    @objc func float_RegexTextfield_ListMin() -> Float {
        return 0.0
    }

    @objc func float_RegexTextfield_ListMax() -> Float {
        return 366.0
    }

    @objc func float_RegexTextfield_ListRegex() -> String {
        return "^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\\.\\d+)?$"
    }

    @objc func float_RegexTextfield_ListValues() -> [String:Any] {
        return ["0 days":0.0,
                "1 month":30.0,
                "1 Year":365.0]
    }

    // double_Slider

    @objc var double_Slider: Double

    @objc func double_SliderDescription() -> String {
        return "Double - slider"
    }

    @objc func double_SliderMin() -> Double {
        return 0.0
    }

    @objc func double_SliderMax() -> Double {
        return 1000.0
    }

    @objc func double_SliderIcon() -> APLPredefinedIcon {
        return .iconSliderBrightness
    }

    // double_Textfield

    @objc var double_Textfield: Double

    @objc func double_TextfieldDescription() -> String {
        return "Double - textfield"
    }

    @objc func double_TextfieldMin() -> Double {
        return 10.0
    }

    @objc func double_TextfieldMax() -> Double {
        return 20.0
    }

    @objc func double_TextfieldRegex() -> String {
        return ""
    }

    // double_RegexTextfield

    @objc var double_RegexTextfield: Double

    @objc func double_RegexTextfieldDescription() -> String {
        return "Double - textfield with regex"
    }

    @objc func double_RegexTextfieldMin() -> Double {
        return 5.0
    }

    @objc func double_RegexTextfieldMax() -> Double {
        return 250.0
    }

    @objc func double_RegexTextfieldRegex() -> String {
        return "^(?:[1-9]\\d*|0)?(?:\\.\\d+)?$"
    }

    // double_List

    @objc var double_List: Double

    @objc func double_ListDescription() -> String {
        return "Double - fixed list"
    }

    @objc func double_ListValues() -> [String:Any] {
        return ["None":-100.0,"Low":-50.0,"Zero":0.0,"High":50.0,"Urgent":100.0]
    }

    // double_Textfield_List

    @objc var double_Textfield_List: Double

    @objc func double_Textfield_ListDescription() -> String {
        return "Double - textfield, customizable list"
    }

    @objc func double_Textfield_ListMin() -> Double {
        return 0.0
    }

    @objc func double_Textfield_ListMax() -> Double {
        return 100.0
    }

    @objc func double_Textfield_ListRegex() -> String {
        return ""
    }

    @objc func double_Textfield_ListValues() -> [String:Any] {
        return ["Failed":0.0,
                "Pass":80.0,
                "Excellence":90.0]
    }

    // double_RegexTextfield_List

    @objc var double_RegexTextfield_List: Double

    @objc func double_RegexTextfield_ListDescription() -> String {
        return "Double - textfield with regex, customizable list"
    }

    @objc func double_RegexTextfield_ListMin() -> Double {
        return 0.0
    }

    @objc func double_RegexTextfield_ListMax() -> Double {
        return 366.0
    }

    @objc func double_RegexTextfield_ListRegex() -> String {
        return "^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\\.\\d+)?$"
    }

    @objc func double_RegexTextfield_ListValues() -> [String:Any] {
        return ["0 days":0.0,
                "1 month":30.0,
                "1 Year":365.0]
    }

    @objc override func allowInvalidSignatures() -> Bool {
#if DEBUG
        return true
#else
        return false
#endif
    }
    
    /**
     * Paste your publicKey here that you exported from the Appfigurate app on your
     * device or simulator.
     */

    @objc override func publicKey() -> String {
        // 69 98 C5 AE 18 DD
        return "-----BEGIN PUBLIC KEY-----\n" +
        "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoz4y4OPvOJ7GzXzF+aOX\n" +
        "6ciynAEeWMlZFz8s023C4R+Nh8bard8kMXdwtt34bd4WEkE2cgQxulMjX4vIUzjI\n" +
        "dTrtwMZeujkrVyLSUD6BuEK3zVrkm+2X67RlNfLMa1d5/ph9/J5MXTwDMe+9A/wg\n" +
        "fMBwFxlFOV6FkdNCljKtte1lvMMJ73sLc6ni+YL6BTfo3GwVSUtTRbmHpiPFY/Qh\n" +
        "BxNwswx8IgQyujWZMTOj4LXwDopXaLGYYjnesCg5SXr0EFBkxS7jLIr/0NaLylTU\n" +
        "bMnAr90AR3Lgt7wxbn2NMGBYJJfbkBl1nmdb3HRuCmvqSSCckOvzTiCiTaDuW7si\n" +
        "nQIDAQAB\n" +
        "-----END PUBLIC KEY-----\n"
    }

    @objc override func reset() {
        boolean = true
        string_Textfield = "tuesday"
        string_RegexTextfield = "bot"
        string_List = "sm"
        string_Textfield_List = "g"
        string_RegexTextfield_List = "https://m.appfigurate.io/list"
        encrypted_string_Textfield_List = "g"
        encrypted_string_RegexTextfield_List = "https://m.appfigurate.io/list"
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
