//
//  ArrayDataProvider.m
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/19Tue.
//  Copyright © 2017 郭源. All rights reserved.
//

#import "ArrayDataProvider.h"

@implementation ArrayDataProvider

+ (instancetype)dataProviderWithItems:(NSArray<NSArray *> *)items {
    return [[self alloc] initWithItems:items];
}

- (instancetype)initWithItems:(NSArray<NSArray *> *)items {
    if (self = [super init]) {
        _items = items;
    }
    return self;
}

- (NSInteger)numberOfSections {
    return self.items.count;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
    if (section < 0 || section >= self.items.count) {
        return 0;
    }
    return ((NSArray *)self.items[section]).count;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section < 0 ||
        indexPath.section >= self.items.count ||
        indexPath.row < 0 ||
        indexPath.row >= ((NSArray *)self.items[indexPath.section]).count) {
        return nil;
    }
    return ((NSArray *)self.items[indexPath.section])[indexPath.row];
}

@end
