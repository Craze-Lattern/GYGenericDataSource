//
//  ArrayDataProvider.h
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/19Tue.
//  Copyright © 2017 郭源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CollectionDataProvider.h"

NS_ASSUME_NONNULL_BEGIN

@interface ArrayDataProvider<__covariant Type> : NSObject<CollectionDataProvider>

+ (instancetype)dataProviderWithItems:(NSArray<NSArray<Type> *> *)items;

- (instancetype)initWithItems:(NSArray<NSArray<Type> *> *)items;

@property (nonatomic, readonly, strong) NSArray<NSArray<Type> *> *items;

@end

NS_ASSUME_NONNULL_END
