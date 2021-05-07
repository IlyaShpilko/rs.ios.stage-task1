#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    NSCharacterSet *numberSet = [NSCharacterSet decimalDigitCharacterSet];
    NSString * newString = [self stringByTrimmingCharactersInSet:numberSet];
        
    if ((newString.length == 0) && (self.length > 0)) {
        return true;
    }

    return false;
}

@end
