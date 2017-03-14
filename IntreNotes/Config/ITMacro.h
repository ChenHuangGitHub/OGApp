//
//  ITMacro.h
//  intreHome
//
//  Created by orange on 17/2/21.
//  Copyright © 2017年 Orange. All rights reserved.
//

#ifndef ITMacro_h
#define ITMacro_h

//pragma mark - SIZE
#pragma mark - SIZE
#define SCREEN_SIZE        [UIScreen mainScreen].bounds.size
#define SCREEN_WIDTH       [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT      [UIScreen mainScreen].bounds.size.height
#define HEIGHT_STATUSBAR   20.0f
#define HEIGHT_TABBAR      49.0f
#define HEIGHT_NAVBAR      44.0f
#define NAVBAR_ITEM_FIXED_SPACE    5.0f


//#pragma mark - COLOR
#pragma mark - COLOR
#define RGBA(r, g, b, a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:a]
#define RGB(r, g, b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.0]
#define RANDOMRGB  [UIColor colorWithRed:arc4random_uniform(256) / 255.0 green:arc4random_uniform(256) / 255.0 blue:arc4random_uniform(256) / 255.0 alpha:1]


//#pragma mark - Alert提示宏定义
#pragma mark - Alert提示宏定义
#define Alert(_S_, ...) [[[UIAlertView alloc] initWithTitle:@"提示" message:[NSString stringWithFormat:(_S_), ##__VA_ARGS__] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil] show]


//#pragma mark - 开发者模式打印,发布者模式不打印
#pragma mark - NSLog
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s:%d\t%s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__,   [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif


//#pragma mark - 获取图片资源
#pragma mark - 获取图片资源
#define GetImage(imageName) [UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]];


//判断是否为iPhone
#pragma mark - 判断设备机型
#define iPhone5CSE [[UIScreen mainScreen] bounds].size.width == 320.0f && [[UIScreen mainScreen] bounds].size.height == 568.0f
#define iPhone6_6s [[UIScreen mainScreen] bounds].size.width == 375.0f && [[UIScreen mainScreen] bounds].size.height == 667.0f
#define iPhone6Plus_6sPlus [[UIScreen mainScreen] bounds].size.width == 414.0f && [[UIScreen mainScreen] bounds].size.height == 736.0f


//获取系统版本
#pragma mark - 获取系统版本
#define iOS_SYSTEM_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define iOS10_OR_LATER ([[UIDevice currentDevice].systemVersion floatValue] >= 10)


//数组是否为空
#pragma mark - 数组是否为空
#define ArrayIsEmpty(array) (array == nil || [array isKindOfClass:[NSNull class]] || array.count == 0)


//字典是否为空
#pragma mark - 字典是否为空
#define DictIsEmpty(dic) (dic == nil || [dic isKindOfClass:[NSNull class]] || dic.allKeys == 0)


//字符串是否为空
#pragma mark - 字符串是否为空
#define StringIsEmpty(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] < 1 ? YES : NO )


//是否为空对象
#pragma mark - 是否为空对象
#define ObjectIsEmpty(_object) (_object == nil \
|| [_object isKindOfClass:[NSNull class]] \
|| ([_object respondsToSelector:@selector(length)] && [(NSData *)_object length] == 0) \
|| ([_object respondsToSelector:@selector(count)] && [(NSArray *)_object count] == 0))


//单例化一个类
#pragma mark - 单例化一个类
//声明
#define SINGLE_INT +(instancetype)sharedInstance;
//实现
#define SINGLE_IMP \
static id _instance = nil;\
+ (instancetype)sharedInstance\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [[self alloc] init];\
});\
return  _instance;\
\
}\


//获取通知中心
#pragma mark - 获取通知中心
#define NotificationCenter [NSNotificationCenter defaultCenter]



#endif /* ITMacro_h */
