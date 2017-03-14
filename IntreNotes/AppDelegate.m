//
//  AppDelegate.m
//  IntreNotes
//
//  Created by orange on 17/3/13.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "AppDelegate.h"
#import "ITRootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self p_initUI];
    
    return YES;
}

- (void)p_initUI {
    
    ITRootViewController *rooVC = [ITRootViewController shareRootViewController];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setRootViewController:rooVC];
    [self.window addSubview:rooVC.view];
    [self.window makeKeyAndVisible];
}


- (void)applicationWillResignActive:(UIApplication *)application {

}


- (void)applicationDidEnterBackground:(UIApplication *)application {

}


- (void)applicationWillEnterForeground:(UIApplication *)application {

}


- (void)applicationDidBecomeActive:(UIApplication *)application {

}


- (void)applicationWillTerminate:(UIApplication *)application {

}


@end
