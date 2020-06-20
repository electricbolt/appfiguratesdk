// ExampleConfiguration.swift
// SwiftExample Copyright© 2020; Electric Bolt Limited.

import Foundation
import AppfigurateLibrary

@objcMembers class ExampleConfiguration: APLConfiguration {
    
    // MARK: - Bool

    @BoolProperty(description: "Bool - Boolean true or false", restart: false)
    var boolean: Bool

    // MARK: - String
    
    @StringPropertyEdit(regex: "", description: "String - textfield", restart: true)
    var string_Textfield: String

    @StringPropertyEdit(regex: "b[aeiou]t", description: "String - textfield with regex", restart: false)
    var string_RegexTextfield: String

    @StringPropertyList(description: "String - fixed list", restart: false, values: ["Small":"sm", "Medium":"md", "Large":"lg"])
    var string_List: String
    
    @StringPropertyListEdit(regex: "", description: "String - textfield, customizable list", restart: false, values: ["Red":"r", "Green":"g", "Blue":"b"])
    var string_Textfield_List: String
    
    @StringPropertyListEdit(regex: #"https://[\w\.-]+\.appfigurate.io/.*"#, description: "String - textfield with regex, customizable list", restart: false, values: ["Dev":"https://dev.appfigurate.io/list", "Test":"https://test.appfigurate.io/list", "Prod":"https://m.appfigurate.io/list"])
    var string_RegexTextfield_List: String
    
    // MARK: - Encrypted String
    
    @EncryptedStringPropertyListEdit(regex: "", description: "encrypted String - textfield, customizable list", encrypted: ENCRYPTED(), restart: false, values: [
         "Red":ENCRYPTED_STRING_IOS_WATCHOS("r","3/iZZ1Gv8EniGIkIoUzLdJI8SN8tGjus/jGanA6kRM+afnCJYI4E/6Nc1CWK7eIAJBuZRceU6rtlY/OPTSubV4kLQkf/I4gN4pdrC0T8wZSI6uq7xSWk3nfGG6Ujh5sopOpvseCfg+TaTCfYgEgBwlCuxKZICMNH36BZT41v14foSG8AiGjXVcyQ1eYhY9SxQSd8ZsrQhUyyVcInsuJP3GK20yOg2yQjsbOHD3OfkI+adP5M7Y3B7oC/1sPz+CK2ZNhnOMSTeIl3NpfH6YhSkg2Oh5GTZI2cNAGYxPVTgF6/oCCmky8pgZwQFkh7KKqlKKWEB8Mec5emzr2I3IFF8nNQcsX0ck2sGNClqWXY3ysB","dHRf4b3crZfBijY2fGNZSzD+2XHUsi5suWiKd8y2+XXz9HHTqzYq61heHdUQhgssVhB2LrxR0OO8eOWXsfEqOMZLKJb44vHh0sxTA5ykYNCFpjDNWfAamzi6a2XbFJQqQQt8H+cQrLnbt39WQmeitE/yT9HXOxT0DFmCgbPcr+4CJrDkOhcdLD3a3MLjJ+pbSDezfi1nFqvy2iDCk/FkM+3K/JUGAqwbbxFW+gOtdHEJ3kLiydqxzOtIrY4H82hk4kM+iKvCAbm5MkVGdGeuC+0aVNtOAN3u7cRvPvmDba5cqKRTazovNfkRPoG7k7Fl8rOq/rZcT3gsNZGuviSst1sgCz3iRj2YeUXtuwG3reoB"),
         "Green":ENCRYPTED_STRING_IOS_WATCHOS("g","PkQfHwaWmK94u9eB9mCfWmOk/vOIOacKivt1lptgJbUzUl2e8pmRnSVLkCeYxoSjPgKEx94t6e/BRhtgMbZyXoo2usUH5jdxaA8HkoUtR4VuMHuZ4Gla+kyuNg1Ki6LC+xAD++dESITzX4EqCCCfVV/qv5u5c9NJYrc7TwNN8bXtVJ6+8hEQeWXdk/05p0wCDjx8hIl+wfmjbKOYwl35mQMW/4EM7SEYFqExxMsR/dcHJG4X0Mw03hEfdqL9nk0anMEyx8ez03WmR8TiZg4UqpbARr6i8IUYx6pMr2ZJjQUzllvTxGpT84VetpN1tvp/Ys+ygtOODZuSp3MjpG0M/tiyGe8g7gNIdauWxN1afdgB","B2l4/IuUUM3AYzWcatSKx4QMvqo4GQYstulXBfBcatay3HCGIFxXiA5udaAqNR8P55EmUgc9pjimmGbXsKSP7GNDLT8wX/y6J+xX6ucHMP9IRxpqOyoJ0KZaU+GWkjodYfNjPoz0pORJut47FhG/cFhJAmYmXQ6v9DaK7xFcJWCrv8EJrs5W9OWmnNpDC53sVXzwLXFTsvKgy8d6W3CRwra5+fGK+J9Lx7Ju4zljp2R3JtdGb+D7IxxlPthj4hiq9a8tSScym1zbvyQExVf8p9MhS1Oplem8ifCGctN0pol+QnbY2F2gAjgMUFPx2PzeGNZmz9KMT4s5CdY10/JtT0AxYnfZXh81uNm7kgl0XOYB"),
         "Blue":ENCRYPTED_STRING_IOS_WATCHOS("b","jaIxDwexYEFUlmoG8QsdKYbj/g2zZWL0q5gmeWGCuLOwXvUHdB0CU7i4v/55LEi3UuN7L9Yj4zjWX//WZB0HFn5+9NZ8IG9xoc+uE+vDMbxAKaqjA5IfJM38eVl0DK/hp0le3qOG11sd+GXoSXSDiwKWGoihqYZ6GUzgDTx8f2OlhqG/SUlm/jADLUNJjK8czZ8fY+Fx75cj7OTlOl+nikFoE5BkR3exOYkeCmAY2KgCYyJQn2w3yaBS0tGafUjAIHIHITodrjG+IbjZLhZyG2/jxkMjLNDs0GCWH6vh+mQ9h6Iwzq3UIZnK9zUn2D4cZV5I2StjPpPdAkGrsdIv0L/bQJZjAnidQIWOC5iB7poB","hksxzd7PONVHjKDh/pOtdXSGB5w+uirfXu/83UkWIdD9AOtN5UCb+FFdHuSltK3bRSWUQos5VoKfBN2efBt2fQ9ASE/cmufNBuSblBYj8zeMLsSoukYmNn+0T0TfbbMHarqYrLbF2euad9ORQw/rFgoqGAzNbzQ4kDbCOMGUvJUAcrmHOTptpKoC6nfga9WRKvrWUxfczMk766qguLhPvKkPftr2zfjG/p2hrGMO69e6eODxBeW3LKCmQ+rbeLTpp2BH2cWZIWPIG+TolPa0HLtmVVyTlnpGi5GpPJgwts9Yg6ZRGqpuUkAUdUzAGkd2xT/D/PxrXo6/EAhDx5Q/H5ExMROF1lyhCuseJNJ2R5IB")])
    var encrypted_string_Textfield_List: String
    
    @EncryptedStringPropertyListEdit(regex: #"https://[\w\.-]+\.appfigurate.io/.*"#, description: "encrypted NSString - textfield with regex, customizable list", encrypted: ENCRYPTED(), restart: false, values: [
        "Dev":ENCRYPTED_STRING_IOS_WATCHOS("https://dev.appfigurate.io/list","jm9SM4MEYa4FRbTrK23n6QWpBl0MfLolPPUrnaUcMcCzmJbzBT0MumGIEFFthMFbx5ZZta8mCIKYwBR2Cu/2b52rFUr2N8xCuWiWURS0erO6sxdY3bJSzRJPo70aGYzMLydVrxUtHv1BjeLTYaG/25hF5JYWf8/TOA4lBRgMsttwbiO+0D6u1qGh4pewpTD5lI8jK39sY3DfSco7+61chGakI7n44y/+toqxWl8rEa5+I9eL0vDASfe7V2KvBhQGV8FLZDkVo0a0fqcCeq5AXU1bl0bMXIB2anN1PdihbPjOLZgpllIzuY+Hy8gFfpoCGQRAiiPSI2YDxT+pg2fKUBMQ9OqFAC5fi+7DqfRhy6SRXjfemq5cDglwMGnpRI4JAQ==","EJkzQ/aiMP3YeAfS2QZ+LMFVAcjy1t0rSd6oSn0wPbput6NaZLW8h35tHMc2B6YBVjZJMijfoCMnrKUInGU1pKMnUBrzmbtyzEC2U3HspGuM5o4rnh1ioT4pxfLE8XaZoa3SPr/45o0RRkZi6Hm+Cf70bqs5bqqtzotAWeacjbZLckfypwKEg6nQ11FYUFJfkevdpBWpFmUyg7EYAg3Ja7iPOQmqnV7lpDXqu4pcxdfjLbEPNmfzkxr29PyUaYORdGpGBEGE/vVahsgJ7iFjaONAR3pjZNbTa0ywDIiQkae6dbVdKxBNJcMGDOw7K3Lg0WSezccJ45Wl6K3xaE84L5idXzfMbZzvfbeSH8k1Bz6EZciZ6o7Rxazbyby/A0dfAQ=="),
        "Test":ENCRYPTED_STRING_IOS_WATCHOS("https://test.appfigurate.io/list","4H4M2YQ2XH+bm7FYVm1sQuN+DaUQdvJecWLKYo3peUYwNJsw+bE/ANFbtfD6xDWCnDW8Bs62tqYDtyg6YhucnTjx82c+axxKG/eDpEd3nPdiWubrw3UwuWa8xKIH8RFVQyRDpWrCbSDG/rREiRdUUs4Lwer7uJfOa92u9iN56T5rgH7/IXfo2N///FxmN/6Tr2vVXNVc+m3snBE8B05+4WUKuDLkjGcmHfzlnRiQVyDDyNKDNr1vDoZduu5Fb5CwPfCrxNIJY4r0XFyPIv+pjAG/Z8Tl2dud6SjCzKirb1Nc0ZeQsCKyhSXDN3PC82qMbviAlkCOvkZ2mca4mRcW1VqeR63Ujp37lCAZKExPdqSlElI4Z0J7/dHuEyMFNP1/xngi3iuOxO6L7Qy9i/RTnQE=","aVJx25VDSKzoGqAJnr16Db1+/2yJKUrusBEcxwQD7XBhXPTAdt+/ozmXKRLYUHfFWO816crQuKaIjVecHCCmynIXgtVlnJOeUbcXhTKZK9H7rbnZK/eKYNIV1fo5dCy11b5BrOS7ZY8UGKI6JkTSa7TPNeRA426d0ZRWHkzGoqCQRoQDdjvs+w9T91AL9YzA+CmpEhnxpVLYhvE7RMx2NyUEAFxZ6RxZtEGMrv0iZnZpYhOydRP7KM0U3dre1RpK2q3LJ9oVbh7lAQ2Pp8jCFZdZDvEP63Ekd6/zlq9PGjmh3xZba+dvFWSU13oxn2G+nUd9b+I4n31NaOmc9yqG8WH3xG8mwfF5lw+wNfZAqUqzknM4SI9n7m7Dm//AhT+Yw/1dRMmZFm+kzrh1oIEDEQE="),
        "Prod":ENCRYPTED_STRING_IOS_WATCHOS("https://m.appfigurate.io/list","IE7X1bkOQGAqCTtLk011hG0Kmj5l0RkSviSO6IfItnIlSEL66ZH1cO4vmN8FtjkWhD+zvcDzHkcsVSsqPrkmYJl29I2otn2dXa9tNIZMW3it1kyoyxnZLwzIJhPGORTMxeLN9h+U36lydUA4fASALFFP+uC+bVHVdvIVUMoGBDdoVwZAXyss4C+rgLTafkok4Hcz/a6rXC5SsluX8/LTnomluqfi8bgrSS2xJKKpHsQQllQmsshublBJ57bKn3EeKmo6DxwBuwBVA2nAdyoi1bLUYN+XN1sjzLaAuYyZeDJGs9qiuj78HCyN4ZrcVe3x00AbNAlSISrZJrw2oMt3exSGFGKAenClYqwoVygDPIPI3vNFCRFcp29N7T4S78K5AQ==","mxax16Pm1XJFQuIMe74oPZ+Kr6YNPtqoOFukYa4dUUUCEHnViO0W+UpsnkTXxh0aPKhRWkj1ISGE+mS2U6S7rCWtEnYfllOTohjMotN53Fx0661S386d35cjcfCirt1kC8MNcn9idsSEPpy3NOU5fmt8zQBY/+mrVkc0VFmkQZnOq48pjkdPTs+K+f6/iQO+1zmqrRRZ3sNVrVPpvnLNHqdyoVKmun9A/Rs4CZ5P2KsIZwuGDZCtLQsWpkUktl1xWjNTFUPRCTBCNhJFkmCHL9uqHuvBc4QgtF6NRqDkEDatpPZZdiBkGwNhO23iDgKkiJBPcOc6ETlGA2tqd2XwlK8LXM+fTI36w9CCCZ2CYueMxhCP4LgN6Lb8PleGX9hEAQ==")])
    var encrypted_string_RegexTextfield_List: String

    // MARK: - Int
    
    @IntPropertySlider(min: 0, max: 1000, icon: .numeric, description: "Integer - slider", restart: true)
    var integer_Slider: Int

    @IntPropertyEdit(min: 10, max: 20, regex: "", description: "Integer - textfield", restart: false)
    var integer_Textfield: Int

    @IntPropertyEdit(min: 1, max: 999, regex: "^([1-9]|[1-9][0-9]|[1-9][0-9][0-9])$", description: "Integer - textfield with regex", restart: false)
    var integer_RegexTextfield: Int

    @IntPropertyList(description: "Integer - fixed list", restart: false, values: ["None":-100,"Low":-50,"Zero":0,"High":50,"Urgent":100])
    var integer_List: Int
    
    @IntPropertyListEdit(min: 0, max: 100, regex: "", description: "Integer - textfield, customizable list", restart: false, values: ["Failed":0,"Pass":80,"Excellence":90])
    var integer_Textfield_List: Int
    
    @IntPropertyListEdit(min: 0, max: 365, regex: "^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])$", description: "Integer - textfield with regex, customizable list", restart: false, values: ["0 days":0,"1 month":30,"1 Year":365])
    var integer_RegexTextfield_List: Int

    // MARK: - float
    
    @FloatPropertySlider(min: 0.0, max: 1000.0, icon: .volume, description: "Float - slider", restart: false)
    var float_Slider: Float
    
    @FloatPropertyEdit(min: 10.0, max: 20.0, regex: "", description: "Float - textfield", restart: true)
    var float_Textfield: Float

    @FloatPropertyEdit(min: 5.0, max: 250.0, regex: #"^(?:[1-9]\d*|0)?(?:\.\d+)?$"#, description: "Float - textfield with regex", restart: false)
    var float_RegexTextfield: Float

    @FloatPropertyList(description: "Float - fixed list", restart: false, values: ["None":-100.0,"Low":-50.0,"Zero":0.0,"High":50.0,"Urgent":100.0])
    var float_List: Float

    @FloatPropertyListEdit(min: 0.0, max: 100.0, regex: "", description: "Float - textfield, customizable list", restart: false, values: ["Failed":0.0, "Pass":80.0, "Excellence":90.0])
    var float_Textfield_List: Float

    @FloatPropertyListEdit(min: 0.0, max: 366.0, regex: #"^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\.\d+)?$"#, description: "Float - textfield with regex, customizable list", restart: false, values: ["0 days":0.0, "1 month":30.0, "1 Year":365.0])
    var float_RegexTextfield_List: Float

    // MARK: - double
    
    @DoublePropertySlider(min: 0.0, max: 1000.0, icon: .brightness, description: "Double - slider", restart: false)
    var double_Slider: Double

    @DoublePropertyEdit(min: 10.0, max: 20.0, regex: "", description: "Double - textfield", restart: false)
    var double_Textfield: Double

    @DoublePropertyEdit(min: 5.0, max: 250.0, regex: #"^(?:[1-9]\d*|0)?(?:\.\d+)?$"#, description: "Double - textfield with regex", restart: false)
    var double_RegexTextfield: Double

    @DoublePropertyList(description: "Double - fixed list", restart: true, values: ["None":-100.0,"Low":-50.0,"Zero":0.0,"High":50.0,"Urgent":100.0])
    var double_List: Double

    @DoublePropertyListEdit(min: 0.0, max: 100.0, regex: "", description: "Double - textfield, customizable list", restart: false, values: ["Failed":0.0, "Pass":80.0, "Excellence":90.0])
    var double_Textfield_List: Double

    @DoublePropertyListEdit(min: 0.0, max: 366.0, regex: #"^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\.\d+)?$"#, description: "Double - textfield with regex, customizable list", restart: false, values: ["0 days":0.0, "1 month":30.0, "1 Year":365.0])
    var double_RegexTextfield_List: Double
    
    // MARK: - Actions
    
    func randomIntegersDescription() -> String {
        return "Set all integer properties to random values"
    }
    
    func randomIntegersAction() {
        integer_Slider = Int.random(in: 0...1000)
        integer_Textfield = Int.random(in: 10...20)
        integer_RegexTextfield = Int.random(in: 1...999)
        switch (Int.random(in: 0...4)) {
            case 0: integer_List = -100
            case 1: integer_List = -50
            case 2: integer_List = 0
            case 3: integer_List = 50
            default: integer_List = 100
        }
        switch (Int.random(in: 0...2)) {
            case 0: integer_Textfield_List = 0
            case 1: integer_Textfield_List = 80
            default: integer_Textfield_List = 90
        }
        integer_RegexTextfield_List = Int.random(in: 0...366)
    }

    func randomIntegersRestart() -> Bool {
        return true
    }
    
    func resetIntegersDescription() -> String {
        return "Reset integer properties to defaults"
    }
    
    func resetIntegersAction() {
        integer_Slider = 500
        integer_Textfield = 10
        integer_RegexTextfield = 500
        integer_List = 0
        integer_Textfield_List = 80
        integer_RegexTextfield_List = 30
    }
    
    func resetIntegersRestart() -> Bool {
        return true
    }
    
    // MARK: - Overrides
    
    override func allowInvalidSignatures() -> Bool {
#if DEBUG
        return true
#else
        return false
#endif
    }

    override func publicKey() -> String {
#if os(iOS)
        // 41 36 87 71 0D 05
        return "-----BEGIN PUBLIC KEY-----\n" +
            "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4TZnKfGeXttN7Rr3eiAZ\n" +
            "PMEPsZvbo7lgIpMh6OjgBsoqkJJP0yXXLtpqsBCv8vm7RYqCn5+yfkiCQiXvkJBz\n" +
            "FSKmLF9EPR9l1H+32Id82dDuseD70D66puPUHjciEgmU18DpW2NVvTAykMwTEsiR\n" +
            "0h/ExBEhUe75qtwlVno8cMFbEfVtiGbKECvWIr122ED71T0Jt2Bcxqx1a7c1hPIV\n" +
            "RwLxIfWfE0+2rB9nJVPBgsTVPywibDvjio82FousyMDmvkAbMq5iyuyvJ0+5bATz\n" +
            "o12GEt5lSiQlCMzfmkWYBROMDCh27qGFVVo1XAUCVsMfsW9n4iQcoLAdUp/LI3B3\n" +
            "ywIDAQAB\n" +
            "-----END PUBLIC KEY-----\n"
#elseif os(watchOS)
        // 0C 96 66 39 0C 04
        return "-----BEGIN PUBLIC KEY-----\n" +
            "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArxgy6NU0IsJxLSZqcZzJ\n" +
            "pcUpdYEyPSWsrwryiMq5evIZQ86xOmj9q4VEUOTr+rgg/Pu7BaNQ8NedvU4nWhVB\n" +
            "OYe84zMjofzFMj0XNoFiCf7lAKaRfy/mzC+BCPWCtau5PQqkTmANjO2fZwuHsk+4\n" +
            "cr1IIvjm0vSMfCdrPoydG8sl1KwgWzXvaKkMKkWmT+Ss2HxewFShgzeoqeJOoZ2M\n" +
            "7c16q8k+yL7kwhq8a+p0iF6yVVUI3263KbGHCU5eG/4JT2sFzt7yBy7Rqj1l62PZ\n" +
            "R0TjFxVFB+NTjeKPady/bFl2ZroGITchWJ/hTGkkUKZYu1t6xhOTxNiKq6/FNqzR\n" +
            "QQIDAQAB\n" +
            "-----END PUBLIC KEY-----\n"
#endif
    }
    
    override func reset() {
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
        float_Textfield_List = 80.0
        float_RegexTextfield_List = 365.0
        double_Slider = 950.0
        double_Textfield = 12.0
        double_RegexTextfield = 5.95
        double_List = -50.0
        double_Textfield_List = 80.0
        double_RegexTextfield_List = 365.0
    }

}
