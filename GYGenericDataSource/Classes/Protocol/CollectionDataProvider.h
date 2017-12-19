//
//  CollectionDataProvider.h
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/19Tue.
//  Copyright © 2017 郭源. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CollectionDataProvider

- (NSInteger)numberOfSections;

- (NSInteger)numberOfItemsInSection:(NSInteger)section;

- (nullable id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
