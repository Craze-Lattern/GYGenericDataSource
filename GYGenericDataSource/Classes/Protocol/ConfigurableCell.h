//
//  ConfigurableCell.h
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/18Mon.
//  Copyright © 2017 郭源. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResuableCell.h"

@protocol ConfigurableCell<ResuableCell>

- (void)configureWithItem:(id)item atIndexPath:(NSIndexPath *)indexPath;

@end
