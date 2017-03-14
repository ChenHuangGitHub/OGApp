//
//  ITRootViewController.m
//  IntreNotes
//
//  Created by orange on 17/3/13.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "ITRootViewController.h"
#import "HomeViewController.h"
#import "DiscoverViewController.h"
#import "MineViewController.h"
#import "ITNavigationController.h"

@interface ITRootViewController ()

@property (strong, nonatomic) HomeViewController *homeVC;
@property (strong, nonatomic) DiscoverViewController *discoverVC;
@property (strong, nonatomic) MineViewController *mineVC;
@property (strong, nonatomic) NSArray *childVCArray;

@end

static ITRootViewController *rootVC = nil;

@implementation ITRootViewController

+ (ITRootViewController *)shareRootViewController {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        rootVC = [[self alloc]init];
    });
    return rootVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setViewControllers:self.childVCArray];
}

#pragma mark - Getter

- (NSArray *)childVCArray {
    if (_childVCArray == nil) {
        _childVCArray = [[NSArray alloc]init];
        ITNavigationController *homeNavVC = [[ITNavigationController alloc]initWithRootViewController:self.homeVC];
        ITNavigationController *disNavVC = [[ITNavigationController alloc]initWithRootViewController:self.discoverVC];
        ITNavigationController *mineNavVC = [[ITNavigationController alloc]initWithRootViewController:self.mineVC];
        _childVCArray = @[homeNavVC,disNavVC,mineNavVC];
    }
    return _childVCArray;
}

- (HomeViewController *)homeVC {
    if (_homeVC == nil) {
        _homeVC = [[HomeViewController alloc]init];
        [_homeVC setTitle:@"首页"];
        [_homeVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_mainframe"]];
        [_homeVC.tabBarItem setSelectedImage:[[UIImage imageNamed:@"tabbar_mainframeHL"]
        imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    }
    
    return _homeVC;
}

- (DiscoverViewController *)discoverVC {
    if (_discoverVC == nil) {
        _discoverVC = [[DiscoverViewController alloc]init];
        [_discoverVC setTitle:@"发现"];
        [_discoverVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_discover"]];
        [_discoverVC.tabBarItem setSelectedImage:[[UIImage imageNamed:@"tabbar_discoverHL"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        
    }
    
    return _discoverVC;
}

- (MineViewController *)mineVC {
    if (_mineVC == nil) {
        _mineVC = [[MineViewController alloc]init];
        [_mineVC setTitle:@"我的"];
        [_mineVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_me"]];
        [_mineVC.tabBarItem setSelectedImage:[[UIImage imageNamed:@"tabbar_meHL"]
         imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    }
    
    return _mineVC;
}

@end
