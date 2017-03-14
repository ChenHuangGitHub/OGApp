//
//  UIFont+ITFont.m
//  intreHome
//
//  Created by orange on 17/3/9.
//  Copyright © 2017年 Orange. All rights reserved.
//


///在iPhone4~6中，缩放因子scale=2；在iPhone6+中，缩放因子scale=3
#define FONT_COMPATIBLE_SCREEN_OFFSET(_fontSize_) [UIFont systemFontOfSize:(_fontSize_ *([UIScreen mainScreen].scale) / 2)]

#import "UIFont+ITFont.h"

@implementation UIFont (ITFont)

+ (UIFont *)fontNavBarTitle {
    
    return [UIFont boldSystemFontOfSize:17.5f];
}

#pragma mark - Mine
+ (UIFont *)fontMineNikename {

    return FONT_COMPATIBLE_SCREEN_OFFSET(17);
    
}
+ (UIFont *)fontMineUsername {
    
    return FONT_COMPATIBLE_SCREEN_OFFSET(14);
}

#pragma mark - Setting
+ (UIFont *)fontSettingHeaderAndFooterTitle {
    
    return FONT_COMPATIBLE_SCREEN_OFFSET(14);
}



@end
