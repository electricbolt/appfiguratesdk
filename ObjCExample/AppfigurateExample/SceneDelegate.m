// SceneDelegate.m
// AppfigurateExample Copyright© 2020; Electric Bolt Limited.

@import AppfigurateLibrary;
#import "SceneDelegate.h"

@implementation SceneDelegate

- (void)scene:(UIScene *)scene openURLContexts:(NSSet<UIOpenURLContext *> *)URLContexts API_AVAILABLE(ios(13.0)) {
    NSURL *url = [[[URLContexts allObjects] firstObject] URL];
    if (url != nil) {
        APLApplicationOpenURL(url);
    }
}

@end
