// ExampleConfiguration.m
// AppfigurateExample Copyright© 2013; Electric Bolt Limited.

#import "ExampleConfiguration.h"

@implementation ExampleConfiguration

// MARK: - Bool

BOOL_PROPERTY(boolean, @"BOOL - Boolean YES or NO", NO);

// MARK: - String

STRING_PROPERTY_EDIT(string_Textfield, @"", @"NSString - textfield", YES);
STRING_PROPERTY_EDIT(string_RegexTextfield, @"b[aeiou]t", @"NSString - textfield with regex", NO);
STRING_PROPERTY_LIST(string_List, @"NSString - fixed list", NO, @{@"Small":@"sm", @"Medium":@"md", @"Large":@"lg"});
STRING_PROPERTY_LIST_EDIT(string_Textfield_List, @"", @"NSString - textfield, customizable list", NO, @{@"Red":@"r", @"Green":@"g", @"Blue":@"b"});
STRING_PROPERTY_LIST_EDIT(string_RegexTextfield_List, @"https://[\\w\\.-]+\\.appfigurate.io/.*", @"NSString - textfield with regex, customizable list", NO, @{@"Dev":@"https://dev.appfigurate.io/list", @"Test":@"https://test.appfigurate.io/list", @"Prod":@"https://m.appfigurate.io/list"});

// MARK: - Encrypted String

ENCRYPTED_STRING_PROPERTY_LIST_EDIT(encrypted_string_Textfield_List, @"", @"encrypted NSString - textfield, customizable list", NO, @{
    @"Red":ENCRYPTED_STRING_IOS_WATCHOS(@"r",@"3/iZZ1Gv8EniGIkIoUzLdJI8SN8tGjus/jGanA6kRM+afnCJYI4E/6Nc1CWK7eIAJBuZRceU6rtlY/OPTSubV4kLQkf/I4gN4pdrC0T8wZSI6uq7xSWk3nfGG6Ujh5sopOpvseCfg+TaTCfYgEgBwlCuxKZICMNH36BZT41v14foSG8AiGjXVcyQ1eYhY9SxQSd8ZsrQhUyyVcInsuJP3GK20yOg2yQjsbOHD3OfkI+adP5M7Y3B7oC/1sPz+CK2ZNhnOMSTeIl3NpfH6YhSkg2Oh5GTZI2cNAGYxPVTgF6/oCCmky8pgZwQFkh7KKqlKKWEB8Mec5emzr2I3IFF8nNQcsX0ck2sGNClqWXY3ysB",@"dHRf4b3crZfBijY2fGNZSzD+2XHUsi5suWiKd8y2+XXz9HHTqzYq61heHdUQhgssVhB2LrxR0OO8eOWXsfEqOMZLKJb44vHh0sxTA5ykYNCFpjDNWfAamzi6a2XbFJQqQQt8H+cQrLnbt39WQmeitE/yT9HXOxT0DFmCgbPcr+4CJrDkOhcdLD3a3MLjJ+pbSDezfi1nFqvy2iDCk/FkM+3K/JUGAqwbbxFW+gOtdHEJ3kLiydqxzOtIrY4H82hk4kM+iKvCAbm5MkVGdGeuC+0aVNtOAN3u7cRvPvmDba5cqKRTazovNfkRPoG7k7Fl8rOq/rZcT3gsNZGuviSst1sgCz3iRj2YeUXtuwG3reoB"),
    @"Green":ENCRYPTED_STRING_IOS_WATCHOS(@"g",@"PkQfHwaWmK94u9eB9mCfWmOk/vOIOacKivt1lptgJbUzUl2e8pmRnSVLkCeYxoSjPgKEx94t6e/BRhtgMbZyXoo2usUH5jdxaA8HkoUtR4VuMHuZ4Gla+kyuNg1Ki6LC+xAD++dESITzX4EqCCCfVV/qv5u5c9NJYrc7TwNN8bXtVJ6+8hEQeWXdk/05p0wCDjx8hIl+wfmjbKOYwl35mQMW/4EM7SEYFqExxMsR/dcHJG4X0Mw03hEfdqL9nk0anMEyx8ez03WmR8TiZg4UqpbARr6i8IUYx6pMr2ZJjQUzllvTxGpT84VetpN1tvp/Ys+ygtOODZuSp3MjpG0M/tiyGe8g7gNIdauWxN1afdgB",@"B2l4/IuUUM3AYzWcatSKx4QMvqo4GQYstulXBfBcatay3HCGIFxXiA5udaAqNR8P55EmUgc9pjimmGbXsKSP7GNDLT8wX/y6J+xX6ucHMP9IRxpqOyoJ0KZaU+GWkjodYfNjPoz0pORJut47FhG/cFhJAmYmXQ6v9DaK7xFcJWCrv8EJrs5W9OWmnNpDC53sVXzwLXFTsvKgy8d6W3CRwra5+fGK+J9Lx7Ju4zljp2R3JtdGb+D7IxxlPthj4hiq9a8tSScym1zbvyQExVf8p9MhS1Oplem8ifCGctN0pol+QnbY2F2gAjgMUFPx2PzeGNZmz9KMT4s5CdY10/JtT0AxYnfZXh81uNm7kgl0XOYB"),
    @"Blue":ENCRYPTED_STRING_IOS_WATCHOS(@"b",@"jaIxDwexYEFUlmoG8QsdKYbj/g2zZWL0q5gmeWGCuLOwXvUHdB0CU7i4v/55LEi3UuN7L9Yj4zjWX//WZB0HFn5+9NZ8IG9xoc+uE+vDMbxAKaqjA5IfJM38eVl0DK/hp0le3qOG11sd+GXoSXSDiwKWGoihqYZ6GUzgDTx8f2OlhqG/SUlm/jADLUNJjK8czZ8fY+Fx75cj7OTlOl+nikFoE5BkR3exOYkeCmAY2KgCYyJQn2w3yaBS0tGafUjAIHIHITodrjG+IbjZLhZyG2/jxkMjLNDs0GCWH6vh+mQ9h6Iwzq3UIZnK9zUn2D4cZV5I2StjPpPdAkGrsdIv0L/bQJZjAnidQIWOC5iB7poB",@"hksxzd7PONVHjKDh/pOtdXSGB5w+uirfXu/83UkWIdD9AOtN5UCb+FFdHuSltK3bRSWUQos5VoKfBN2efBt2fQ9ASE/cmufNBuSblBYj8zeMLsSoukYmNn+0T0TfbbMHarqYrLbF2euad9ORQw/rFgoqGAzNbzQ4kDbCOMGUvJUAcrmHOTptpKoC6nfga9WRKvrWUxfczMk766qguLhPvKkPftr2zfjG/p2hrGMO69e6eODxBeW3LKCmQ+rbeLTpp2BH2cWZIWPIG+TolPa0HLtmVVyTlnpGi5GpPJgwts9Yg6ZRGqpuUkAUdUzAGkd2xT/D/PxrXo6/EAhDx5Q/H5ExMROF1lyhCuseJNJ2R5IB")
});
ENCRYPTED_STRING_PROPERTY_LIST_EDIT(encrypted_string_RegexTextfield_List, @"https://[\\w\\.-]+\\.appfigurate.io/.*", @"encrypted NSString - textfield with regex, customizable list", NO, @{
    @"Dev":ENCRYPTED_STRING_IOS_WATCHOS(@"https://dev.appfigurate.io/list",@"jm9SM4MEYa4FRbTrK23n6QWpBl0MfLolPPUrnaUcMcCzmJbzBT0MumGIEFFthMFbx5ZZta8mCIKYwBR2Cu/2b52rFUr2N8xCuWiWURS0erO6sxdY3bJSzRJPo70aGYzMLydVrxUtHv1BjeLTYaG/25hF5JYWf8/TOA4lBRgMsttwbiO+0D6u1qGh4pewpTD5lI8jK39sY3DfSco7+61chGakI7n44y/+toqxWl8rEa5+I9eL0vDASfe7V2KvBhQGV8FLZDkVo0a0fqcCeq5AXU1bl0bMXIB2anN1PdihbPjOLZgpllIzuY+Hy8gFfpoCGQRAiiPSI2YDxT+pg2fKUBMQ9OqFAC5fi+7DqfRhy6SRXjfemq5cDglwMGnpRI4JAQ==",@"EJkzQ/aiMP3YeAfS2QZ+LMFVAcjy1t0rSd6oSn0wPbput6NaZLW8h35tHMc2B6YBVjZJMijfoCMnrKUInGU1pKMnUBrzmbtyzEC2U3HspGuM5o4rnh1ioT4pxfLE8XaZoa3SPr/45o0RRkZi6Hm+Cf70bqs5bqqtzotAWeacjbZLckfypwKEg6nQ11FYUFJfkevdpBWpFmUyg7EYAg3Ja7iPOQmqnV7lpDXqu4pcxdfjLbEPNmfzkxr29PyUaYORdGpGBEGE/vVahsgJ7iFjaONAR3pjZNbTa0ywDIiQkae6dbVdKxBNJcMGDOw7K3Lg0WSezccJ45Wl6K3xaE84L5idXzfMbZzvfbeSH8k1Bz6EZciZ6o7Rxazbyby/A0dfAQ=="),
    @"Test":ENCRYPTED_STRING_IOS_WATCHOS(@"https://test.appfigurate.io/list",@"4H4M2YQ2XH+bm7FYVm1sQuN+DaUQdvJecWLKYo3peUYwNJsw+bE/ANFbtfD6xDWCnDW8Bs62tqYDtyg6YhucnTjx82c+axxKG/eDpEd3nPdiWubrw3UwuWa8xKIH8RFVQyRDpWrCbSDG/rREiRdUUs4Lwer7uJfOa92u9iN56T5rgH7/IXfo2N///FxmN/6Tr2vVXNVc+m3snBE8B05+4WUKuDLkjGcmHfzlnRiQVyDDyNKDNr1vDoZduu5Fb5CwPfCrxNIJY4r0XFyPIv+pjAG/Z8Tl2dud6SjCzKirb1Nc0ZeQsCKyhSXDN3PC82qMbviAlkCOvkZ2mca4mRcW1VqeR63Ujp37lCAZKExPdqSlElI4Z0J7/dHuEyMFNP1/xngi3iuOxO6L7Qy9i/RTnQE=",@"aVJx25VDSKzoGqAJnr16Db1+/2yJKUrusBEcxwQD7XBhXPTAdt+/ozmXKRLYUHfFWO816crQuKaIjVecHCCmynIXgtVlnJOeUbcXhTKZK9H7rbnZK/eKYNIV1fo5dCy11b5BrOS7ZY8UGKI6JkTSa7TPNeRA426d0ZRWHkzGoqCQRoQDdjvs+w9T91AL9YzA+CmpEhnxpVLYhvE7RMx2NyUEAFxZ6RxZtEGMrv0iZnZpYhOydRP7KM0U3dre1RpK2q3LJ9oVbh7lAQ2Pp8jCFZdZDvEP63Ekd6/zlq9PGjmh3xZba+dvFWSU13oxn2G+nUd9b+I4n31NaOmc9yqG8WH3xG8mwfF5lw+wNfZAqUqzknM4SI9n7m7Dm//AhT+Yw/1dRMmZFm+kzrh1oIEDEQE="),
    @"Prod":ENCRYPTED_STRING_IOS_WATCHOS(@"https://m.appfigurate.io/list",@"IE7X1bkOQGAqCTtLk011hG0Kmj5l0RkSviSO6IfItnIlSEL66ZH1cO4vmN8FtjkWhD+zvcDzHkcsVSsqPrkmYJl29I2otn2dXa9tNIZMW3it1kyoyxnZLwzIJhPGORTMxeLN9h+U36lydUA4fASALFFP+uC+bVHVdvIVUMoGBDdoVwZAXyss4C+rgLTafkok4Hcz/a6rXC5SsluX8/LTnomluqfi8bgrSS2xJKKpHsQQllQmsshublBJ57bKn3EeKmo6DxwBuwBVA2nAdyoi1bLUYN+XN1sjzLaAuYyZeDJGs9qiuj78HCyN4ZrcVe3x00AbNAlSISrZJrw2oMt3exSGFGKAenClYqwoVygDPIPI3vNFCRFcp29N7T4S78K5AQ==",@"mxax16Pm1XJFQuIMe74oPZ+Kr6YNPtqoOFukYa4dUUUCEHnViO0W+UpsnkTXxh0aPKhRWkj1ISGE+mS2U6S7rCWtEnYfllOTohjMotN53Fx0661S386d35cjcfCirt1kC8MNcn9idsSEPpy3NOU5fmt8zQBY/+mrVkc0VFmkQZnOq48pjkdPTs+K+f6/iQO+1zmqrRRZ3sNVrVPpvnLNHqdyoVKmun9A/Rs4CZ5P2KsIZwuGDZCtLQsWpkUktl1xWjNTFUPRCTBCNhJFkmCHL9uqHuvBc4QgtF6NRqDkEDatpPZZdiBkGwNhO23iDgKkiJBPcOc6ETlGA2tqd2XwlK8LXM+fTI36w9CCCZ2CYueMxhCP4LgN6Lb8PleGX9hEAQ==")
});

// MARK: - NSInteger

INT_PROPERTY_SLIDER(integer_Slider, 0, 1000, APLIconSliderNumeric, @"Integer - slider", YES);
INT_PROPERTY_EDIT(integer_Textfield, 10, 20, @"", @"Integer - textfield", NO);
INT_PROPERTY_EDIT(integer_RegexTextfield, 1, 999, @"^([1-9]|[1-9][0-9]|[1-9][0-9][0-9])$", @"Integer - textfield with regex", NO);
INT_PROPERTY_LIST(integer_List, @"Integer - fixed list", NO, @{@"None":@-100,@"Low":@-50,@"Zero":@0,@"High":@50,@"Urgent":@100});
INT_PROPERTY_LIST_EDIT(integer_Textfield_List, 0, 100, @"", @"Integer - textfield, customizable list", NO, @{@"Failed":@0,@"Pass":@80,@"Excellence":@90});
INT_PROPERTY_LIST_EDIT(integer_RegexTextfield_List, 0, 365, @"^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])$", @"Integer - textfield with regex, customizable list",NO, @{@"0 days":@0,@"1 month":@30,@"1 Year":@365});

// MARK: - float

FLOAT_PROPERTY_SLIDER(float_Slider, 0.0, 1000.0, APLIconSliderVolume, @"Float - slider", NO);
FLOAT_PROPERTY_EDIT(float_Textfield, 10.0, 20.0, @"", @"Float - textfield", YES);
FLOAT_PROPERTY_EDIT(float_RegexTextfield, 5.0, 250.0, @"^(?:[1-9]\\d*|0)?(?:\\.\\d+)?$", @"Float - textfield with regex", NO);
FLOAT_PROPERTY_LIST(float_List, @"Float - fixed list", NO, @{@"None":@-100.0,@"Low":@-50.0,@"Zero":@0.0,@"High":@50.0,@"Urgent":@100.0});
FLOAT_PROPERTY_LIST_EDIT(float_Textfield_List, 0.0, 100.0, @"", @"Float - textfield, customizable list", NO, @{@"Failed":@0.0,@"Pass":@80.0,@"Excellence":@90.0});
FLOAT_PROPERTY_LIST_EDIT(float_RegexTextfield_List, 0.0, 366.0, @"^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\\.\\d+)?$", @"Float - textfield with regex, customizable list", NO, @{@"0 days":@0.0,@"1 month":@30.0,@"1 Year":@365.0});

// MARK: - double

DOUBLE_PROPERTY_SLIDER(double_Slider, 0.0, 1000.0, APLIconSliderBrightness, @"Double - slider", NO);
DOUBLE_PROPERTY_EDIT(double_Textfield, 10.0, 20.0, @"", @"Double - textfield", NO);
DOUBLE_PROPERTY_EDIT(double_RegexTextfield, 5.0, 250.0, @"^(?:[1-9]\\d*|0)?(?:\\.\\d+)?$", @"Double - textfield with regex", NO);
DOUBLE_PROPERTY_LIST(double_List, @"Double - fixed list", YES, @{@"None":@-100.0,@"Low":@-50.0,@"Zero":@0.0,@"High":@50.0,@"Urgent":@100.0});
DOUBLE_PROPERTY_LIST_EDIT(double_Textfield_List, 0.0, 100.0, @"", @"Double - textfield, customizable list", NO, @{@"Failed":@0.0,@"Pass":@80.0,@"Excellence":@90.0});
DOUBLE_PROPERTY_LIST_EDIT(double_RegexTextfield_List, 0.0, 366.0, @"^(0?[0-9]?[0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-5])?(?:\\.\\d+)?$", @"Double - textfield with regex, customizable list", NO, @{@"0 days":@0.0,@"1 month":@30.0,@"1 Year":@365.0});

// MARK: - Actions

ACTION_METHOD(randomIntegers, @"Set all integer properties to random values", YES) {
    self.integer_Slider = rand() % 1001;
    self.integer_Textfield = (rand() % 10) + 10;
    self.integer_RegexTextfield = (rand() % 998) + 1;
    switch (rand() % 5) {
        case 0: self.integer_List = -100; break;
        case 1: self.integer_List = -50; break;
        case 2: self.integer_List = 0; break;
        case 3: self.integer_List = 50; break;
        default: self.integer_List = 100;
    }
    switch (rand() % 3) {
        case 0: self.integer_Textfield_List = 0; break;
        case 1: self.integer_Textfield_List = 80; break;
        default: self.integer_Textfield_List = 90;
    }
    self.integer_RegexTextfield_List = rand() % 366;
}

ACTION_METHOD(resetIntegers, @"Reset integer properties to defaults", YES) {
    self.integer_Slider = 500;
    self.integer_Textfield = 10;
    self.integer_RegexTextfield = 500;
    self.integer_List = 0;
    self.integer_Textfield_List = 80;
    self.integer_RegexTextfield_List = 30;
}


// MARK: - Overrides

- (BOOL) allowInvalidSignatures {
#if DEBUG
    return YES;
#else
    return NO;
#endif
}

- (NSString*) publicKey {
#if TARGET_OS_IOS
    // 41 36 87 71 0D 05
    return @"-----BEGIN PUBLIC KEY-----\n" \
        "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4TZnKfGeXttN7Rr3eiAZ\n" \
        "PMEPsZvbo7lgIpMh6OjgBsoqkJJP0yXXLtpqsBCv8vm7RYqCn5+yfkiCQiXvkJBz\n" \
        "FSKmLF9EPR9l1H+32Id82dDuseD70D66puPUHjciEgmU18DpW2NVvTAykMwTEsiR\n" \
        "0h/ExBEhUe75qtwlVno8cMFbEfVtiGbKECvWIr122ED71T0Jt2Bcxqx1a7c1hPIV\n" \
        "RwLxIfWfE0+2rB9nJVPBgsTVPywibDvjio82FousyMDmvkAbMq5iyuyvJ0+5bATz\n" \
        "o12GEt5lSiQlCMzfmkWYBROMDCh27qGFVVo1XAUCVsMfsW9n4iQcoLAdUp/LI3B3\n" \
        "ywIDAQAB\n" \
        "-----END PUBLIC KEY-----\n";
#elif TARGET_OS_WATCH
    // 0C 96 66 39 0C 04
    return @"-----BEGIN PUBLIC KEY-----\n" \
        "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArxgy6NU0IsJxLSZqcZzJ\n" \
        "pcUpdYEyPSWsrwryiMq5evIZQ86xOmj9q4VEUOTr+rgg/Pu7BaNQ8NedvU4nWhVB\n" \
        "OYe84zMjofzFMj0XNoFiCf7lAKaRfy/mzC+BCPWCtau5PQqkTmANjO2fZwuHsk+4\n" \
        "cr1IIvjm0vSMfCdrPoydG8sl1KwgWzXvaKkMKkWmT+Ss2HxewFShgzeoqeJOoZ2M\n" \
        "7c16q8k+yL7kwhq8a+p0iF6yVVUI3263KbGHCU5eG/4JT2sFzt7yBy7Rqj1l62PZ\n" \
        "R0TjFxVFB+NTjeKPady/bFl2ZroGITchWJ/hTGkkUKZYu1t6xhOTxNiKq6/FNqzR\n" \
        "QQIDAQAB\n" \
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
    self.float_Textfield_List = 80.0;
    self.float_RegexTextfield_List = 365.0;
    self.double_Slider = 950.0;
    self.double_Textfield = 12.0;
    self.double_RegexTextfield = 5.95;
    self.double_List = -50.0;
    self.double_Textfield_List = 80.0;
    self.double_RegexTextfield_List = 365.0;
}

@end
