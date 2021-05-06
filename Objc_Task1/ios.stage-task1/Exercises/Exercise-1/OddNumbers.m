//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    NSInteger oddNumber = 0;
    
    for (NSNumber *num in array) {
        if (num.intValue % 2 != 0) {
            oddNumber += 1;
        }
    }
    
    return oddNumber;
}

@end
