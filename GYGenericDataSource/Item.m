//
//  Item.m
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/19Tue.
//  Copyright © 2017 郭源. All rights reserved.
//

#import "Item.h"

@implementation Item

+ (instancetype)itemWithTitle:(NSString *)title detailText:(NSString *)detailText {
    return [[self alloc] initWithTitle:title detailText:detailText];
}

- (instancetype)initWithTitle:(NSString *)title detailText:(NSString *)detailText {
    if (self = [super init]) {
        _title = title;
        _detailText = detailText;
    }
    return self;
}

@end
