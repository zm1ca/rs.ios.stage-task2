#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger pairsCounter = 0;
    
    for (int i = 0; i < array.count; ++i) {
        for (int j = 0; j < array.count; ++j) {
            if ([array[j] intValue] - [array[i] intValue] == [number intValue]) {
                pairsCounter++;
            }
        }
    }
    
    return pairsCounter;
}

@end
