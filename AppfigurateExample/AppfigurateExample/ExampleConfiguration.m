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
    @"Red":ENCRYPTED_STRING_IOS_WATCHOS(@"r",@"BfWFC9+uwGtJJyUor63rCdKSpwupWClDQLxKP9id9d4l7N/SNtblZiui2K5z1VzywHizCdK08M2hjkZcf5XVSx71IKHMyO/t14z1IbiFbsB3zUzJ5LbfnAME8UmBv/X7LM6WbsPBcQTKOadbqViI9b82hGTMtC9Z4Mm7E01MyKg0XtU31ZbCgwp74xAkRXPANJ0aOcS9PLs9S7HIy3ZoFjp1b47oVOUlSpqq+3Tdp17I9jhqIXSyyk5/ugTEJVHPTVKa6Y6VC0qCrWPTQptq4MmxJO8Ur9Pwo/bw2MGvz9UBFe8QLlPAfc0AW+2DlkIa3ZENNqOkJJj22G+dtHmg3XLkI7IUh29K8MeUwJFGKwIB",@"k+mpSRvP8bl0fGf9tsESM2+7RJHiytPqboShB93UfTe1imz7ixj08P6ZV8Xd3ZMBq2CvwG0El0q+I9zTxv8eMawrWYYAuRalf5jXjsOxoI9EaIImGkxa0n0tWMnLlUZbXa8C53Z886Vslk5BGGSMg8uCYxSYzicoYRanr4oEMH9vPdTzS60INV0ZAfEsQp3UmwOWoyX6by8LhduLnANkqOe9niFspiUrhBoMnhtqQY5Vt0KEX6+zArDboShIRqVJfgnsx4T2Ti7euCGbARwtMDU4YMmTk8IVzgui4/zqkRZORgwXsL2ElwvukSLEc5CFGFrZL9IRcfOBvUHB9tpSlworwN54fVrzvbGicTYFISUB"),
    @"Green":ENCRYPTED_STRING_IOS_WATCHOS(@"g",@"NtVZZs0/y3qgURpQlE6nWC7HDwBow6SdQmo2b4kyjAEXzi8ODlGMzwacfNXVFKUkd5T8UcLdMBX9QOuhA4NC+dvPh1K5kAOwdTH4I+OIwu0rv0OHgtmjpKMBeGktaKC4PMATPcM4UZLxMusRqyAQIn+OOZOpGkhblMOnu6GkO6jLcDL+b27orwlcG8j95juA/CZv7KRVO6TJzmg7WG727liDxpaV9+J7cymhUHTFGmuBWabtP9JukBFtBBnIJhQiiJ037yOZK5elldmmKdSQuzXoc0iu1epKppwIjbDJCSbIhkks+m9J3T4UeH5KjQqAD4PWBcrypAYsgY2yzl1GROsAwyrbQcA4p8GumC7ot8YB",@"nHXfLV0LrtsVf+Wopu5vPwv9n+xfgmUO6IcJXzvqKunCLdnI0wFrH2fSJiX5UaSBhZDTS3Qmw93vOzPS8y785tZaeIZ1wMaZFXta3is8T/L4VJiQGlPjRUb597+xoWwf2dQKJ3YSCm23N3VrNRmkW2D+JRPMkmnP46STyN1SPoh2klxznPTjOgCdbBCgVa/OWAUo4AfvxwbtJr9jjDfx+xwit1/eAB/187qeoLhxrfpKg6cEfLxcbqAantANdl1gBOabEDQZttp/r095Z0PNkwMJo8TqYpmBrDUGd7iSma8s8O1CkxtidYwNgnIpoKTXxdbJdwNtNrnDWGLq85uFCBezlWO0epTN25k6EJq53D4B"),
    @"Blue":ENCRYPTED_STRING_IOS_WATCHOS(@"b",@"GaQjYf3oLLoGn1pqKbdzofZ4iAyKDyA00nFD1fzzpCFCLEVs0Y02va6VuNDaWsH+c2fhhgIPG5/yoYVIJAehsv5Ootf/IP3+6gxX8Oh0Y8LeZ+ut4j4qEtgZhDYOJjQV/vvnVihabu0GSFv5ZnpXEamO61TmZIj7+rUlEkYzv3e3DloCLoBI5/8FkkEmATz7hXNkHBcNgA/Mx6Rm6AqGlmFJFIKlnMUivBqxwkiertCEHI9rpj7RaiJEliUMz6Z63h6bLB3rPeNQfA53I+lo8cBVhGE+8p8gao97g2gWs2sn+KJthU3OWRCW+NrYgHVNE1mvT3Tc5omUHZ8NcuZOyGpmOKoIu07izBriuUtgGbYB",@"KSHfwWiinVeR355wOLe3LuQ29PIFQznZGIfYOtZkgcLZaNmUGK28aETNRuTFGYD02v0NjF16uEoBjuRyp6/EA8xvQLX7E3p+8o6r5qcLMi9yztBCFG434uUqLxpJUcy652ucU38AT7V2jNclHKUV5yMOLUfV87J1oDtU2y3NMYRCb1E+Urnhy7ebpSEPW+2ey9OLIF4VzzbMMmOFtxEUYmwcCL3YXBpCyorTtVsJ/7S/8w/im9WTCIfxzL8BU/O18KjqLiLhhr+N8/v2fUVadU6omoV7ZBzTVnKFbMegb/G6wWK+MfdXg9Tr0HUbcN9VohhPRfWlmDq6VgS2I3Cjg9/vjN7L1BhZgLku/SMARMwB")
});
ENCRYPTED_STRING_PROPERTY_LIST_EDIT(encrypted_string_RegexTextfield_List, @"https://[\\w\\.-]+\\.appfigurate.io/.*", @"encrypted NSString - textfield with regex, customizable list", @{
    @"Dev":ENCRYPTED_STRING_IOS_WATCHOS(@"https://dev.appfigurate.io/list",@"H7o9Lgqd4RgMJLXnv3Yb/TihVKm1jM9X0U37Z0yDT3tDPHb6itJ4PieRbyux6PUm+Uv2lCOShohmWnghXIyp+DQBIjhuTa9PNbFELtYaO3iRpYWXPm/DFbeE8Zk7AK54oibkyqwy55QfCybL080ci5gpXhCt9CMNDjkatrnz+nhetv4mlhirRoix5UH0Fwxd4xNEjynIrLKOPGXmI9WuD9XiIo8qvyIsbnsIPL7Ul0hZ+X+SOjTdNSXFxJB9hH6bharBwtpV17RrgIezv90FFMs8/LRqtJ99bmfn11oZm5pilVkdT1dCfCbHds+FL8l1ouHhe0vPlC9WcxfxNbUQ/DBlTpTlPVSFkh9w7pps1wfXd3QoPGDJDrtJQGh8DiiSAQ==",@"EGM/vGRsmCAs1wxJ5qprhKLwcfdAj6mj5lsitgoqVRZNz7k+D2g6SpOB7OsK4xJQspV5ETw8oAoY2aYW6oMBeOjU58CzSBDfjNfkqW8yZwtBilcZc3YcET4htp80/NbAiJo12n1RpX3S9G0pzKeqrSAB8VO2JMDf9j+YDeQi8VNOI/eGzTDqhB8lDTWVG/fJxGrPt4KbO//OJIh/IuYljLuBRZO3839zpQLdoxLi3xezybUCebi6t/Af5ZF5X2BPn1DDE1LkNUFlaoy5qxLl6f6+EOy/DR+bXQk2pIjW5u/cxlJoTGwJmsPx+oDdW3zbu3ILKfy7ldUPXDccwnKEu4VnQf4qhC32rSV/+rnir/K30wMCFp2n0o94da+mAMXvAQ=="),
    @"Test":ENCRYPTED_STRING_IOS_WATCHOS(@"https://test.appfigurate.io/list",@"PL+UtWB9WHuO7jx6v5ntCVUVoKH1Bp8rSmssTb+yGvpAidug7uNofSb3xlQyzDToFQhrmlf0BSw8iLlGFv9IJxRZhkj8+ulYWeUnmW8ju1eN69iqCpQpd8+fxidHFqAlyCowSrXxJ49K7XQK5p8Hf1mNUiS01eDmv4Fkw1LnNuEUtIyHbfkgU1W7Glb9fMFTi23dN+P3mm3vqztUDOLlKX2Cff4yqO0uzlrE/Pvs2xVg4WLbLNfCgRs50098/03u1hBlDupyjzre3T7dQQWROyHdKrIr4GMODjZciPTGI4b97+ekan1gW18FkKmTaEPd+ReTMvbcydCPk/PgaM7fa2SpclcDcKaBfjsDIFWhz8YGR2q4zOfb4VXoyS3MGqxPN5WqveAqA7aX5BdNqEcbmQE=",@"M5fZpcZHgQhhGhErsYxPOqbsPiglHP3+QUVUAHYl4JUMnKJ7WnJDNZ0AFcrR2m7FuE5X9nwd+kbtoPZ7tK2UwgEr9Gnbm2avolk11zgW63OrMtczIHyprjFUVyQDJWaI1Y2HQ85rolG2kLXVDlhLG5RTFf4z+YgUjjxK5kDI2piJvtd6a1Lkcek34vkSmKxRfK6cb0YebBuHKHzdegWoxSrMz5ZG+fZqazYy6qi0Xw2UgJ2W1oK9QIz8kKN2sIeypqy5E2NR1ZiQaxpkwDsGfj/+OPzU6RgeDAjWz6L8gfbBTRPlQwtAMf1H0XL11G8JR9MthVBZ5WNUqXuA7/UkY6dVvZYmOmAyv0C1JPpS7b3MthkCGYOHOH4F+Nm+JwqWtUEBeBTfj5SZHf67tOgEJQE="),
    @"Prod":ENCRYPTED_STRING_IOS_WATCHOS(@"https://m.appfigurate.io/list",@"IxrJFFUarMg6pz3laaFKJ/X8P5KCNGjOk/dcKC35ELw5s69HBRYHQitt+EH7BhvRYmpIS/U8M5x2/xqHL00e7Zqi4rbdhrcSJGAbNxjLIEvuWkyJKVwy4esfruPydN/QCeupXZ0+53hufLBQ8JFCudreqntAGns53M/K/qnAjVyVHikFy/Uf193Y5D2DVwzdlnahNTQaKnkY1cs+p1U8J5dh2Ebk1k7rZguH/jF0Q0yjjorDhU9n4BE9LGPHI1BIH7w/EA0l+1iKNELbx4vv5YBQ5eGMxlPI7ezIwufMDZ27plPkR35bJZI9q99FEuP4wg1BUr8gc+Np/+ouS2Agchm/qU0ONYT/ncQ2zDF4UW6dZk9dlG6PBE7OWYOC2uJ1AQ==",@"GKK0cVFyVjx3pcA9rCxOVw00EiZfE2OPJT7/yoZJREjUDYYj9XsjEs730u3L8E78r5b1OoFF4Jav8rhUaNxE49badLXzU4J3X3/3ItrzzI8nCDieZS8RSOF/2KRj8q8ZmyScYM3H+s1ZdK4zqXq467q999eaeC+BMbhXWDvIQgDHYeLtzOc+YWePSyQH0GE/UmXRN6staeFCR3JqsMRHFdEwzp/5a0Q416Bgk/f/rblCMtMqVqpfLJc3muCLNl+BD6aIBMR87QXJNRag//UUkIAXHGei3hr+V24Iz5wsKQ32ypo6oSh5FvAPHaaCSGqCvJIEJigERkfhoPJpXa8N7UYPOpCGGqBltdwnf2UbWER9N0JwnlGVg3gKFp/IuDE2AQ==")
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
    // 23 49 1A F4 B9 C2
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
