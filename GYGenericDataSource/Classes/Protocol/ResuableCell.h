//
//  ResuableCell.h
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/18Mon.
//  Copyright © 2017 郭源. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ResuableCell

@property (class, nonatomic, readonly, copy) NSString *reuseIdentifier;

@end
