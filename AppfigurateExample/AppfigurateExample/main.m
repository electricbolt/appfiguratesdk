/*******************************************************************************
 * main.m                                                                      *
 * AppfigurateExample Copyright (c) 2013; Electric Bolt Limited.               *
 ******************************************************************************/

@import UIKit;

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        NSLog(@"identifierForVendor=%@", [[UIDevice currentDevice] identifierForVendor]);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
