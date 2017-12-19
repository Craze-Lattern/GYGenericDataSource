//
//  CollectionArrayDataSource.h
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/19Tue.
//  Copyright © 2017 郭源. All rights reserved.
//

#import "CollectionDataSource.h"

NS_ASSUME_NONNULL_BEGIN

@interface CollectionArrayDataSource<__covariant Type> : CollectionDataSource

+ (instancetype)dataSourceWithCollectionView:(__kindof UICollectionView *)collectionView array:(NSArray<Type> *)array reuseIdentifier:(NSString *)reuseIdentifier;

+ (instancetype)dataSourceWithCollectionView:(__kindof UICollectionView *)collectionView arrays:(NSArray<NSArray<Type> *> *)arrays reuseIdentifier:(NSString *)reuseIdentifier;

- (instancetype)initWithCollectionView:(__kindof UICollectionView *)collectionView array:(NSArray<Type> *)array reuseIdentifier:(NSString *)reuseIdentifier;

- (instancetype)initWithCollectionView:(__kindof UICollectionView *)collectionView arrays:(NSArray<NSArray<Type> *> *)arrays reuseIdentifier:(NSString *)reuseIdentifier;

- (Type)itemAtIndexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
