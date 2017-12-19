//
//  CollectionViewCell.m
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/19Tue.
//  Copyright © 2017 郭源. All rights reserved.
//

#import "CollectionViewCell.h"
#import "Item.h"

@interface CollectionViewCell()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailTextLabel;
@end

@implementation CollectionViewCell



- (void)configureWithItem:(Item *)item atIndexPath:(NSIndexPath *)indexPath {
    self.titleLabel.text = item.title;
    self.detailTextLabel.text = item.detailText;
}

+ (NSString *)reuseIdentifier {
    return NSStringFromClass(self);
}

@end
