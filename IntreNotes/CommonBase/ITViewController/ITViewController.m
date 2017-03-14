//
//  ITViewController.m
//  IntreNotes
//
//  Created by orange on 17/3/13.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "ITViewController.h"

@interface ITViewController ()

@end

@implementation ITViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    [MobClick beginLogPageView:self.analyzeTitle];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
//    [MobClick endLogPageView:self.analyzeTitle];
}

- (void)dealloc {
#ifdef DEBUG_MEMERY
    NSLog(@"dealloc:%@", self.navigationItem.title);
#endif
}

#pragma mark - Getter

-  (NSString *)analyzeTitle {
    if (_analyzeTitle == nil) {
        return self.navigationItem.title;
    }
    return _analyzeTitle;
}


@end
