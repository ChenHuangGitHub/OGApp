//
//  ITProgressHUD.m
//  intreHome
//
//  Created by orange on 17/3/10.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "ITProgressHUD.h"
#import "SVProgressHUD.h"

@implementation ITProgressHUD

+ (void)show {
    [self showWithStatus:nil];
}

+ (void)showWithStatus:(NSString*)status {
    
    [SVProgressHUD showWithStatus:status];
}

+ (void)dismiss {
    
    if ([SVProgressHUD isVisible]) {
        [SVProgressHUD dismiss];
    }
}




@end
