//
//  CollectionDataSource.m
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/19Tue.
//  Copyright © 2017 郭源. All rights reserved.
//

#import "CollectionDataSource.h"
#import "ConfigurableCell.h"

@interface CollectionDataSource()<UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, readonly, copy) NSString *reuseIdentifier;

@property (nonatomic, readonly, strong) UICollectionView *collectionView;

@end

@implementation CollectionDataSource

+ (instancetype)dataSourceWithCollectionView:(__kindof UICollectionView *)collectionView provider:(id<CollectionDataProvider>)provider reuseIdentifier:(NSString *)reuseIdentifier {
    return [[self alloc] initWithCollectionView:collectionView provider:provider reuseIdentifier:reuseIdentifier];
}

- (instancetype)initWithCollectionView:(__kindof UICollectionView *)collectionView provider:(id<CollectionDataProvider>)provider reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super init]) {
        _collectionView = collectionView;
        _provider = provider;
        _reuseIdentifier = reuseIdentifier;
        [self setUpDelete];
    }
    return self;
}

- (void)setUpDelete {
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.provider numberOfSections];
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.provider numberOfItemsInSection:section];
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath { 
    UICollectionViewCell<ConfigurableCell> *cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.reuseIdentifier forIndexPath:indexPath];
    if (!cell) {
        return [UICollectionViewCell new];
    }
    id item = [self.provider itemAtIndexPath:indexPath];
    if (item) {
        [cell configureWithItem:item atIndexPath:indexPath];
    }
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (self.handler) {
        self.handler(indexPath);
    }
}

@end
