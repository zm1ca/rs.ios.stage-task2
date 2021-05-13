#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray *numbersArray = [[NSMutableArray alloc] init];
    NSMutableArray *stringsArray = [[NSMutableArray alloc] init];
    
    for (NSArray *subarray in array) {
        if (![subarray isKindOfClass:[NSArray class]]) {
            return @[];
        }
        
        if (subarray.count == 0) {
            continue;
        }
        
        if ([subarray.firstObject isKindOfClass:[NSNumber class]]) {
            [numbersArray addObjectsFromArray:subarray];
        }
        
        if ([subarray.firstObject isKindOfClass:[NSString class]]) {
            [stringsArray addObjectsFromArray:subarray];
        }
    }
    
    if (stringsArray.count == 0) {
        return [numbersArray sortedArrayUsingSelector:@selector(compare:)];
    }
    
    if (numbersArray.count == 0) {
        return [stringsArray sortedArrayUsingSelector:@selector(compare:)];
    }
    
    return @[[numbersArray sortedArrayUsingSelector:@selector(compare:)], [stringsArray sortedArrayUsingSelector:@selector(compare:)]];
}

@end
