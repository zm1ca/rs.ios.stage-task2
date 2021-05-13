#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger pairsCounter = 0;
    
    for (int i = 0; i < array.count; ++i) {
        NSNumber *sum = [[NSNumber alloc] initWithInt:([array[i] intValue] + [number intValue])];
        if ([array containsObject:sum]) {
            pairsCounter++;
        }
    }
    
    return pairsCounter;
}

@end
