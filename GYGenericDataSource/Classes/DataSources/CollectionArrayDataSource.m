//
//  CollectionArrayDataSource.m
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/19Tue.
//  Copyright © 2017 郭源. All rights reserved.
//

#import "CollectionArrayDataSource.h"
#import "ArrayDataProvider.h"

@implementation CollectionArrayDataSource

+ (instancetype)dataSourceWithCollectionView:(__kindof UICollectionView *)collectionView array:(NSArray *)array reuseIdentifier:(NSString *)reuseIdentifier {
    return [[self alloc] initWithCollectionView:collectionView array:array reuseIdentifier:reuseIdentifier];
}

+ (instancetype)dataSourceWithCollectionView:(__kindof UICollectionView *)collectionView arrays:(NSArray *)arrays reuseIdentifier:(NSString *)reuseIdentifier {
    return [[self alloc] initWithCollectionView:collectionView arrays:arrays reuseIdentifier:reuseIdentifier];
}

- (instancetype)initWithCollectionView:(__kindof UICollectionView *)collectionView array:(NSArray *)array reuseIdentifier:(NSString *)reuseIdentifier {
    return [self initWithCollectionView:collectionView arrays:@[array] reuseIdentifier:reuseIdentifier];
}

- (instancetype)initWithCollectionView:(__kindof UICollectionView *)collectionView arrays:(NSArray *)arrays reuseIdentifier:(NSString *)reuseIdentifier {
    ArrayDataProvider *provider = [ArrayDataProvider dataProviderWithItems:arrays];
    return [super initWithCollectionView:collectionView provider:provider reuseIdentifier:reuseIdentifier];
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return [self.provider itemAtIndexPath:indexPath];
}

@end
