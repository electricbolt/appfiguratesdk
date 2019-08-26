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
ENCRYPTED_STRING_PROPERTY_LIST_EDIT(encrypted_string_Textfield_List, @"", @"encrypted NSString - textfield, customizable list", @{
    @"Red":ENCRYPTED_STRING_IOS_WATCHOS(@"r",@"RqpRWxTNJ9eCVUewC5HviOik2KUO3WnMb6uurP+7SCMYpSku0aeLuiirDi4dgl403vg68eQGB5fPq5ur9U3fXyS2HoHyn4UDcQLLuLZ3qq0n2VjkOZFmP5PdkyV8qiIu+2JCtSB/U+N7IX0f3yoOeU4c+9VxQ+PuykoPtfAH67fv2s7Pbf+blinhy+WmzRKoiXBu9JtoH8mMpiqeZYNm5BkUEClIBXrLlC4rIDaSpjPEHrdYWdJeHkJFl5EHCGEKKtnruS8QABTuufT/RQaiMt4wMs5zBbFhhLohwQRFDJhpFpJkvrX2Lg7wVJDH7pXqvcaVEKplk97tEWcAkBHgY0WS+6WaH+NMPdwhPmLbdgoB",@"uedjix27fUH1bQ34GQY3v2CVo+krqdU0A6HQwjZBhaGHc/j2H5VBbbyJJ1ks61EobC/FO6Nghij6uvz9Yi/VqXM1cOgF096GYKz6hs3tvZDsuaQ/+w5NL0PuXAVEbt9+pL9lZuc9hv9rM+oT/4TM0Y7P5i6O8TE2/twI32pyO3cXF6q7vvWwbN6yJRYqD4QOaT/1q0oP6qxHovkhv7E/KCbxMUEXTlaxHf1uOxSoje/0I2HPbQVSUWclOIX44KYpgh43mCzp6VhBJGJ62qJbCDZZPGHHyAatqhmZNhy0yXpP3H2pEObMZPyrnBoX9jQqFSOsEAZxVa66flz+PIMqVgDLGjEkMouAe+JI24nrGIsB"),
    @"Green":ENCRYPTED_STRING_IOS_WATCHOS(@"g",@"d8Orhr8R3QXo3TzZDzs1JvsP6UMNMKcLLLK1OFDQw71uPKurpMxRSiEBBZojnMv8xnt7mvExpa2nxnSCeSh5ZL8wYD2xoD37LprlU63r8n5xaffZ0/m6zotuJ/DFizRDZ6i4zorMgvBhxBM9IYwxnn5dgF4Wv8RB+mHCrt01qmIdziLUl+xQC7uYYi1kRxWhedcQimd04lyX0mgalx/1upY/dWEsgxWOqEWhb02YT1Qnr1Iu2V4PIezfWR7/BUXqULShTD4rKdU/OUPIDMspDssV+VO+ssCHKItCak/GL1ERf5Laoq7vI0rbIS96BUjuCpqS4eSeXSsA4ofO+j3s4hCdl/crUygWGBWIEYyJIw8B",@"1B9shXjcDQ14wLz8L031oG0m4IEptz9b2T0n+VeiZxE0IoN53wkRKPwBf/VkDLXTQ8QkYZfxOpnBcLYHk2w45sx2fpzsYOgibNxNRiaFh6gb2R9EY+MYm/HD3guRB7wS/AHYpq1u0AYBwI/ExrSf4QYY5vNOPpQkMf7EBGDkkh1n1x0tZ1NeF8dj+ifEDYexOSvc+GAA78PmT9daSwUIacJvHzJqf0Z6AaEQmu4i2UihVWosHLb0nF/nK8AdPRpFS7vgtL6f7dTUWwytGIZ2J1sy0LUe9pgIX1WBaMDBLwpkLnt/JdhAftkI6flqoNXgUk1l3zO6lfYakW9r4HMYk7L3hJocpugvtmaGOuHFV+cB"),
    @"Blue":ENCRYPTED_STRING_IOS_WATCHOS(@"b",@"LlvNl0+13oGf8DJBKQdZifwmFYzza38G3iwJzPwLcbuFSj66RDDml0JGxzsxlYPx22zhZJ9m30yp+t/qepiNWkLOTVz1X7+PVR2KyfkkPQqO3AB9456eo13Jewoljh/GftBiQQW7e5d+HeXJR1zGePC4ftJlUH3eT8bfmQxQmV3jKmCaNrXbyE44lT6IgOo/5lElE7w0drH/w2GHS286NJq+XuxFMJ5g8sWMzm3RhMVWg9RgMQwhMwAJEg7pVL+f73L+s3zJC4RIsE+Kg7uRv+zJNraW8pR/ijK7tkCyJHXdkOslbgkfRnbOPLeHhCky05jRVcrcE7lcCCuFf1UZSQDCFAhOFKYXeoWRKQ9wmKcB",@"YCk+XCwKU96H1fXzpF1k7gG29p6d0/MpBPsnIjDmNPcG6scCJVB9zqz663vARWkqgkFcYZHFIVhYYN2n9OrU5HsH/7mFHlwUAB1YatXqB/aCTsxp3bQnnoma2uLsTZUlf/nGd58B/fGewdcLd+xZYqO3zjyF4fQrtmmY3mzts8CPD61zWXdCmtyBNbhD3fCVpXGLC19wZd/vMBNvQnkcTnvvvJP2A5NOT8narRv6lfZ7l+zdCU5IX4bmIk/7gwkmtETNys13J+1BjmoVs2BloaG7WdzpV6n4zy/h3QXfKJbsxflYOmR46/ryBTiOPZ0Nhh8Cu6XyMM7qUyhECfmPf/Et9L5ub4h7AjgyNwMZBq8B")
});
ENCRYPTED_STRING_PROPERTY_LIST_EDIT(encrypted_string_RegexTextfield_List, @"https://[\\w\\.-]+\\.appfigurate.io/.*", @"encrypted NSString - textfield with regex, customizable list", @{
    @"Dev":ENCRYPTED_STRING_IOS_WATCHOS(@"https://dev.appfigurate.io/list",@"FKLr/HM9S+CzYS4lleAfCuj2wPzt9M3oib6Yj6Jkbqn0JRbXtq+Tv+aoyIQNxCAq0qaulkWXCW3tij9lKpq6xHG/1q9OsA8CBj/6ohQyCvIxCS/igFM8et5iw+XFeQyxMBnCdbRkUhj1d3LNvGDlrN7wNJ6ToCEq7nkqQWfu7HpJmhFMKFBr+Ayt1oFc43ZzR7pw9DPIN+sgCBrWSOxI6PQaM+RRDBZGeN9MM3hc/D8CmiK8U7YbwsupjnsGg5a5Uv0eB3orWduJMFoBdJquMMLzH7bPqEnaOwAwgfRJ7GPo7SMRg/21DNw45CI2Tl6TAqU10e18bblNb6yVUiA87bFyI6VNXGEkTrcFSfj5K9vj7UWdVaC8Ouymiww6EUTcAQ==",@"aPW00K12nllleJRbODbB1dzFs9psafF0Xz6ivd2Sl0G/WkMeUsoBja38DVEugKntOw8aYgbl0/sYAw8WEqYDs2jmNATN4n5Mb9mxgq3YVuhij6c/5rlzpHf/zt+N4Hr7AMnf2LWI8WS11I+5cyyzit4EZNIQKLtFCEZwBt7bXwrv5r3FWucB9qtLt3+706J6lHVE96f1LAJetcZ4wCvGUfnBeK/2uCYqliaDQVghoHze9WH4LcIGJSAol6yu8IdnWRM20cXvGMhBnn0wn2m3rV0dRYkDUPT4H/+Aj65/04I4YZbKDiXPnVkBuGYdXlHC9Uvf4XPe+rHyCKzejKwX8fFWqn0e46Zc35+idJkpkHCp1FZAPyAn1mSapJNE2tZgAQ=="),
    @"Test":ENCRYPTED_STRING_IOS_WATCHOS(@"https://test.appfigurate.io/list",@"V/lDWgpK3Kmwdo/vmbBlJ2k81oy2m4EgOM0Xa7QnoHWy+3hQFeATbfyLlYH65+3Svn6Ito2ldInv3/9wOjl+p6b1+s0nP8FR3WsKXbvm1Dd3mKClWblD+JJfCidUElu3iJP/Uouyop146+8heOqCTR2bDKwn7yOpIy/ipTeAEMV34JfXVeMYhXnj8PJEWt9WiwQF2o3acQtX1teSzR6fVl/cnhLVVQN5cJUvqY7g7n6aI3tV5y/6dRGvqwXFQZniS5yxnBlcwO+HXOf3aSuHW4aMv/+vNTnSQLv7OQDiZbPhMkpIoEEND8E7d9bI7goucD6NKSubM155Pn1lG5+PReTdmfSXV5P+DoDDf03hu/tdUiPVsEh+am4zRwTf1+J6IqXNltUBjmNMAIvBPw2AJgE=",@"y9ZYUPOMHmR93XtVTYMOMwFHZy0zRMYXqdpVlNINH9pQt5AYpCjrLzz463kRqkrTd9DHVRJgLkspWYYiJ49gxy4PCV8FRdIjE7Ilmo4s6YTGawJQVSEJk4J/L5zc0L/t6k2PbvFObvoGVx+MAUGLlW3UcfR2tGOgpxIv6dOUZaO4exepQIdn9JbGvax7T6J7S1ZQkRew6Sy3cxrQ6ARaA9fnfjEv2aSjFadTbEcogtnNubKIDhD34MiY6jVIGC1XJPUdjW3LLsEKCktt8byZLRBuv9kpb9qgTBL5Owq6HfPYoMyni0myy4LK1fmS++aLxKxRQ4OndqUWDv4VM8fmGVErdPJGNhC8/gAwRH+T44Mjr4t2bTGHyyROt65X2TARbXmmNDB9mXzbtyIyMPv0fwE="),
    @"Prod":ENCRYPTED_STRING_IOS_WATCHOS(@"https://m.appfigurate.io/list",@"j6YepPRUuzihIKjNQLMoLjlXQ/ZJOC6BqIU8Xuw1n/Z300ms10lUQ/0ho9Oxlpx1HlvU6UKUltVYzptRD+euyefoAIaiuPHVRvlhrI5ve44DplHj+611ZgdygD+oes57p3WeMCxQL+tfv4eqNz1oOYOSnZ0T5eW4jUdqAZgH+ehsg6WaAMLBbKhQvu5QqI2nnp5l/Txxa+B/83vPuxRadGvcHTlODWKgbJ82DgQBGQjK6VsNXAc549EQCzCYLzPnUaoAWIZbALT4c5v25+ftLbh+cX/R+wOfqoaeWFcw7gYcpE81c0chGAyOuHRgqJstjYlHRTMeW2nJIOacxyhif9HxnOQ/sMusAMXV+dxVBC/aj5Nb4fB3dNuw0sqZxmFVAQ==",@"nyNN6yevhR3hK//GM48aQq1bdhsfBxjQRKbtNJDvS4Jfz/jO2KqQ8ykEFBedm0vFG7g366ZPVr1hTz5Rs9+GBOmHPKfNDJCBUAwYjO3bI8kMuDFPzTE7rDlzFV6XjAVH9f4zAmRMBBHPZb+6V3Uc9LEn/zT/pODYNfL9cBwbRilXWKUqghHS1pxughHHjo037+PpXYV6ytbKqbXkvMTk6mxRJuf/8kvscYNqiguck84ER9w3jwcam4eIXAAaj6CqhEopP+gs/hFTyhMxERmFppNJXUGIB+28CAXoAIBR/JqczYaIZXecxSXigQfOCsRBMPe3zPoQXvAHSqJiCGgv0YPaT0inn9/USC/gXwt4XbLAv60qZ+C5fAm2sPrujpSNAQ==")
});

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
    // 69 98 C5 AE 18 DD
    return @"-----BEGIN PUBLIC KEY-----\n" \
        "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoz4y4OPvOJ7GzXzF+aOX\n" \
        "6ciynAEeWMlZFz8s023C4R+Nh8bard8kMXdwtt34bd4WEkE2cgQxulMjX4vIUzjI\n" \
        "dTrtwMZeujkrVyLSUD6BuEK3zVrkm+2X67RlNfLMa1d5/ph9/J5MXTwDMe+9A/wg\n" \
        "fMBwFxlFOV6FkdNCljKtte1lvMMJ73sLc6ni+YL6BTfo3GwVSUtTRbmHpiPFY/Qh\n" \
        "BxNwswx8IgQyujWZMTOj4LXwDopXaLGYYjnesCg5SXr0EFBkxS7jLIr/0NaLylTU\n" \
        "bMnAr90AR3Lgt7wxbn2NMGBYJJfbkBl1nmdb3HRuCmvqSSCckOvzTiCiTaDuW7si\n" \
        "nQIDAQAB\n" \
        "-----END PUBLIC KEY-----\n";
#elif TARGET_OS_WATCH
    // 5F 7D 0B 0E 61 CE
    return @"-----BEGIN PUBLIC KEY-----\n" \
        "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1QRcYOfE01LKGZaw5p9Q\n" \
        "8LJqyHvfQffGnTPXfnIfG32uGlyOxgESk+rl7wpfYrrCd0SfmUGWO2JZTU6eb8VB\n" \
        "wbVdcRuEpeuMNZeDImvfK8hMCJcBmpK1mIjCU9o7NhMD9rdGQnFfcLMqx65n0Je3\n" \
        "nRQjqkVP7aMMtMQkJJvzm4QS55/PixWwYDABIRdzTBDDzfOBUOJZQqBYi/J+o75H\n" \
        "zRnAqMHxAUD3R8x4hFuJbAmuBV7CdMalj29UM8QQ/ZG1aV4qJ6eldfz58KIyPSfN\n" \
        "ESW/teofO6TwnkjQOsIRATt8oS0gOZXDX6FpRwR8hJa318gIun+Cp23z9nKswhuG\n" \
        "eQIDAQAB\n" \
        "-----END PUBLIC KEY-----\n";
#endif
}

- (void) reset {
    self.boolean = YES;
    self.string_Textfield = @"tuesday";
    self.string_RegexTextfield = @"bot";
    self.string_List = @"sm";
    self.string_Textfield_List = @"g";
    self.string_RegexTextfield_List = @"https://m.appfigurate.io/list";
    self.encrypted_string_Textfield_List = @"g";
    self.encrypted_string_RegexTextfield_List = @"https://m.appfigurate.io/list";
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
 * See also ExampleConfiguration.swift in SwiftExample (iOS).
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
