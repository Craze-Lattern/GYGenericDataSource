//
//  ViewController.m
//  GYGenericDataSource
//
//  Created by 郭源 on 2017/12/18Mon.
//  Copyright © 2017 郭源. All rights reserved.
//

#import "ViewController.h"
#import "Item.h"
#import "CollectionViewCell.h"
#import "ArrayDataProvider.h"
#import "CollectionArrayDataSource.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic, strong) CollectionArrayDataSource<Item *> *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = [self setUpDataSource];
}

- (CollectionArrayDataSource *)setUpDataSource {
    NSMutableArray<Item *> *items = [NSMutableArray array];
    for (NSInteger i = 0; i < 30; i++) {
        [items addObject:[Item itemWithTitle:@(i).stringValue detailText:@(i).stringValue]];
    }
    
    CollectionArrayDataSource<Item *> *dataSource = [CollectionArrayDataSource dataSourceWithCollectionView:self.collectionView array:items reuseIdentifier:CollectionViewCell.reuseIdentifier];
    dataSource.handler = ^(NSIndexPath * _Nonnull indexPath) {
        UIAlertController *controller = [UIAlertController alertControllerWithTitle:nil message:[NSString stringWithFormat:@"您点击了%ld", indexPath.row] preferredStyle:UIAlertControllerStyleAlert];
        [controller addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }]];
        [self presentViewController:controller animated:YES completion:nil];
    };
    return dataSource;
}


@end
