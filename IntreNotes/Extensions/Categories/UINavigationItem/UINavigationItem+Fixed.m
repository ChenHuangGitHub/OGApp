//
//  UINavigationItem+Fixed.m
//  intreHome
//
//  Created by orange on 17/2/23.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "UINavigationItem+Fixed.h"

@implementation UINavigationItem (Fixed)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

- (void)setLeftBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated
{
    if (item == nil) {
        [self setRightBarButtonItems:nil animated:animated];
    }
    else if (item.title != nil) {
        [self setLeftBarButtonItems:@[item] animated:animated];
    }
    else {
        [self setLeftBarButtonItems:@[[UIBarButtonItem fixItemSpace:-NAVBAR_ITEM_FIXED_SPACE], item] animated:animated];
    }
}

- (void)setRightBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated
{
    if (item == nil) {
        [self setRightBarButtonItems:nil animated:animated];
    }
    else if (item.title != nil) {
        [self setRightBarButtonItems:@[item] animated:animated];
    }
    else {
        [self setRightBarButtonItems:@[[UIBarButtonItem fixItemSpace:-NAVBAR_ITEM_FIXED_SPACE], item] animated:animated];
    }
}

#pragma clang diagnostic pop

@end
