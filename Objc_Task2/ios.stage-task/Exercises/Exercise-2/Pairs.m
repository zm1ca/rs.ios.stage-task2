#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger pairsCounter = 0;
    
    for (int i = 0; i < array.count; ++i) {
        for (int j = i + 1; j < array.count; ++j) {
            if (ABS([array[i] intValue] - [array[j] intValue]) == [number intValue]) {
                pairsCounter++;
            }
        }
    }
    
    return pairsCounter;
}

@end
