#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSMutableArray *mutab = [NSMutableArray new];
    
    int count = 0;
    
    NSMutableSet *set = [NSMutableSet new];
    
    for (long elementAtIndex = playerArray.count - 1; elementAtIndex >= 0; elementAtIndex--) {
        
        NSNumber *score = [playerArray objectAtIndex: elementAtIndex];
        
        while (count < rankedArray.count && score.intValue < [[rankedArray objectAtIndex:count] intValue] ) {
            [set addObject:[rankedArray objectAtIndex:count]];
            count++;
        }
        
        id obj = @(set.count + 1);
        
        [mutab insertObject:obj atIndex:0];
    }
    
    return mutab;
}

@end
