/*******************************************************************************
 * APLLog.h                                                                    *
 * AppfigurateLibrary Copyright (c) 2016; Electric Bolt Limited.               *
 ******************************************************************************/

@import Foundation;

typedef NS_ENUM(NSInteger, APLLogLevel) {
    APLLogLevelDebug,
    APLLogLevelError,
};

#define APLDEBUG(msg, ...) APLLog(APLLogLevelDebug, msg, ##__VA_ARGS__)
#define APLERROR(msg, ...) APLLog(APLLogLevelError, msg, ##__VA_ARGS__)

extern void APLLog(APLLogLevel logLevel, NSString* msg, ...);
extern void APLLogS(APLLogLevel logLevel, NSString* msg);
