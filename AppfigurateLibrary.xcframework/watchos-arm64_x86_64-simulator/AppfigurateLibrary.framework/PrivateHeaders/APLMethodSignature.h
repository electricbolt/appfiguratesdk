// APLMethodSignature.h
// Appfigurate™ Copyright© 2026; Electric Bolt Limited.

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface APLMethodSignature : NSObject

@property(readonly) NSUInteger numberOfArguments;
@property(readonly) NSUInteger frameLength;
@property(readonly) const char* methodReturnType NS_RETURNS_INNER_POINTER;
@property(readonly) NSUInteger methodReturnLength;
@property(readonly, nonatomic) NSMethodSignature* underlyingMethodSignature;

+ (APLMethodSignature*) methodSignatureForTarget: (id) target selector: (SEL) aSelector;
+ (APLMethodSignature*) instanceMethodSignatureForTarget: (id) target selector: (SEL) aSelector;

- (instancetype) init NS_UNAVAILABLE;
- (instancetype) initWithMethodSignature: (NSMethodSignature*) methodSignature;
+ (nullable APLMethodSignature*) signatureWithObjCTypes: (const char*) types;
- (const char*) getArgumentTypeAtIndex: (NSUInteger) idx NS_RETURNS_INNER_POINTER;
- (BOOL) isOneway;

@end

NS_ASSUME_NONNULL_END
