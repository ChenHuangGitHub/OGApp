//
//  UIButton+Category.m
//  intreHome
//
//  Created by orange on 17/2/23.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "UIButton+Category.h"

@implementation UIButton (Category)

- (void)setImage:(UIImage *)image imageHL:(UIImage *)imageHL {
    [self setImage:image forState:UIControlStateNormal];
    [self setImage:imageHL forState:UIControlStateHighlighted];
}

/**
 UIButton的响应事件若小于44x44,则放大区域,否则保持原大小不变
 */
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {

    CGRect bounds = self.bounds;
    //若原热区小于44x44，则放大热区，否则保持原大小不变
    CGFloat widthDelta = MAX(44 - bounds.size.width, 0);
    CGFloat heightDelta = MAX(44 - bounds.size.height, 0);
    bounds = CGRectInset(bounds, -0.5 * widthDelta, -0.5 * heightDelta);
    return CGRectContainsPoint(bounds, point);
}

@end
