//
//  UITableView+Category.m
//  intreHome
//
//  Created by orange on 17/2/23.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "UITableView+Category.h"

@implementation UITableView (Category)

- (void)scrollToBottomWithAnimation:(BOOL)animation {
    
    NSUInteger section = 0;
    if (self.dataSource && [self.dataSource respondsToSelector:@selector(numberOfSectionsInTableView:)]) {
        section = [self.dataSource numberOfSectionsInTableView:self] - 1;
    }
    if ([self.dataSource respondsToSelector:@selector(tableView:numberOfRowsInSection:)]) {
        NSUInteger row = [self.dataSource tableView:self numberOfRowsInSection:section];
        if (row > 0) {
            [self scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:row - 1 inSection:section] atScrollPosition:UITableViewScrollPositionBottom animated:animation];
        }
    }
}

@end
