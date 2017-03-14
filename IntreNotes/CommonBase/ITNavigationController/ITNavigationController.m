//
//  ITNavigationController.m
//  IntreNotes
//
//  Created by orange on 17/3/13.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "ITNavigationController.h"

@interface ITNavigationController ()

@end

@implementation ITNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationBar setBarTintColor:[UIColor colorNavBarBarTint]];
    [self.navigationBar setTintColor:[UIColor colorNavBarTint]];
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],
                                         NSFontAttributeName:[UIFont fontNavBarTitle]}];
}





@end
