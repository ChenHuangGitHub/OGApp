//
//  ITProgressHUD.h
//  intreHome
//
//  Created by orange on 17/3/10.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITProgressHUD : NSObject

//展示
+ (void)show;

///带标题展示
+ (void)showWithStatus:(NSString*)status;

///移除
+ (void)dismiss;

@end
