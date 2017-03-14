//
//  UIColor+ITColor.m
//  intreHome
//
//  Created by orange on 17/3/9.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "UIColor+ITColor.h"

@implementation UIColor (ITColor)

+ (UIColor *)colorTableViewBG {
    
    return RGBA(239.0, 239.0, 244.0, 1.0);
}

+ (UIColor *)colorTabBarBG {
    
    return RGBA(239.0, 239.0, 244.0, 1.0);
}

+ (UIColor *)colorNavBarTint {
    
    return [UIColor whiteColor];
}

+ (UIColor *)colorNavBarBarTint {
    
    return RGBA(20.0, 20.0, 20.0, 0.9);
}

+ (UIColor *)colorDefaultGreen {

    return RGBA(2.0, 187.0, 0.0, 1.0f);
}

@end
