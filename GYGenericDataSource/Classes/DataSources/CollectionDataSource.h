//
//  CollectionDataSource.h
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/19Tue.
//  Copyright © 2017 郭源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CollectionDataProvider.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^CollectionDidSelectItemHandler)(NSIndexPath *);

@interface CollectionDataSource<__covariant Provider: id<CollectionDataProvider>> : NSObject

+ (instancetype)dataSourceWithCollectionView:(__kindof UICollectionView *)collectionView provider:(Provider)provider reuseIdentifier:(NSString *)reuseIdentifier;

- (instancetype)initWithCollectionView:(__kindof UICollectionView *)collectionView provider:(Provider)provider reuseIdentifier:(NSString *)reuseIdentifier; 

@property (nonatomic, copy) CollectionDidSelectItemHandler handler;

@property (nonatomic, readonly, strong) Provider provider;

@end

NS_ASSUME_NONNULL_END
