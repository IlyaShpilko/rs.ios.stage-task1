#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
    if ([self isEqual:@[]]) {
        return nil;
    }
    
    unsigned long left = 0;
    unsigned long right = [self count] - 1;
    
    NSNumber *leftElement = [self objectAtIndex: left];
    NSNumber *rightElement = [self objectAtIndex: right];
    
    if (rightElement.intValue >= leftElement.intValue) {
        return leftElement;
    }
    
    while (right >= left) {
        unsigned long center = left + (right - left) / 2;
        
        NSNumber *centerNumber = [self objectAtIndex: center];
        NSNumber *rightNumber = [self objectAtIndex: center + 1];
        NSNumber *leftNumber = [NSNumber new];
        NSNumber *zeroNumber = [self objectAtIndex: 0];
        
        if (center != 0) {
            leftNumber = [self objectAtIndex: center - 1];
        } else {
            leftNumber = [self objectAtIndex: 0];
        }
        
        if (centerNumber.intValue > rightNumber.intValue) {
            return rightNumber;
        }
        
        if (leftNumber.intValue > centerNumber.intValue) {
            return centerNumber;
        }
        
        if (centerNumber.intValue > zeroNumber.intValue) {
            left = center + 1;
        } else {
            right = center - 1;
        }
    }

        return nil;
}
@end
