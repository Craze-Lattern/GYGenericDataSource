//
//  Item.h
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/19Tue.
//  Copyright © 2017 郭源. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

+ (instancetype)itemWithTitle:(NSString *)title detailText:(NSString *)detailText;

- (instancetype)initWithTitle:(NSString *)title detailText:(NSString *)detailText;

@property (nonatomic, readonly, copy) NSString *title;

@property (nonatomic, readonly, copy) NSString *detailText;

@end
