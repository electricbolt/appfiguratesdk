// APLInvocation.h
// Appfigurate™ Copyright© 2026; Electric Bolt Limited.

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class APLMethodSignature;

@interface APLInvocation: NSObject

@property(nullable, assign) id target;
@property SEL selector;
@property(readonly, retain) APLMethodSignature* methodSignature;
@property(readonly) BOOL argumentsRetained;

- (instancetype) init NS_UNAVAILABLE;
+ (APLInvocation*) invocationWithMethodSignature: (APLMethodSignature*) sig;

- (void) retainArguments;
- (void) getReturnValue: (nullable void*) retLoc;
- (void) setReturnValue: (nullable void*) retLoc;
- (void) getArgument: (nullable void*) argumentLocation atIndex: (NSInteger) idx;
- (void) setArgument: (nullable void*) argumentLocation atIndex: (NSInteger) idx;
- (void) invoke;
- (void) invokeWithTarget: (id) target;

@end

NS_ASSUME_NONNULL_END
