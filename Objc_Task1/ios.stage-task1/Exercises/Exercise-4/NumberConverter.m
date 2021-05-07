#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    
    if (number.intValue < 0) {
        number = @(-number.intValue);
    }

    NSString *string = number.stringValue;

    NSMutableArray *mutab = [NSMutableArray new];
    
    [string enumerateSubstringsInRange:NSMakeRange(0, [string length])
                                options:(NSStringEnumerationByComposedCharacterSequences)
                             usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        [mutab addObject:substring];
    }];

    NSArray *array = [[mutab reverseObjectEnumerator] allObjects];
    
    return array;
}

@end
