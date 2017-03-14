//
//  UIView+Extensions.m
//  intreHome
//
//  Created by orange on 17/2/23.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "UIView+Extensions.h"

@implementation UIView (Extensions)

- (void)removeAllSubViews {
    for (id view in self.subviews) {
        [view removeFromSuperview];
    }
}

@end
