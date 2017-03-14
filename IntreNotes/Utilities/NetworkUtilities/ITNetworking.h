//
//  ITNetworking.h
//  intreHome
//
//  Created by orange on 17/3/10.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITNetworking : NSObject

+ (NSURLSessionDataTask *)postUrl:(NSString *)urlString
                       parameters:(id)parameters
                          success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                          failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;

@end
