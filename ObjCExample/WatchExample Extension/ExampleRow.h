// ExampleRow.h
// WatchExample Extension Copyright© 2016; Electric Bolt Limited.

@import Foundation;
@import WatchKit;

@interface ExampleRow : NSObject

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *name;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *value;

@end
