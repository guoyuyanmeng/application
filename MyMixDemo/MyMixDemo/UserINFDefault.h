//
//  UserINFDefault.h
//  MyDemo
//
//  Created by ishanghealth on 15/4/13.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
@interface UserINFDefault : NSObject

+(User *)getLoginUser;
+(void)saveLoginTypeINF:(User *)user;
+(void)removeLoginUser;
+(void)saveCurrentPid:(NSString *)pid;
+(NSString *)getCurrentPid;
+(void)removeCurrentPid;
+(void)saveSubTypeINF:(User *)user;
+(User *)getSubLoginUser;
+(void)saveLoginType:(BOOL)type;
+(BOOL)getLoginType;
+(void)saveRememberState:(BOOL)state;
+(BOOL)getRememberState;
+(void)saveAutoLoginState:(BOOL)state;
+(BOOL)getAutoLoginState;
+(BOOL)isFirstLogin;
+(void)setFirstLogin;
+(void)removeFirstLogin;

+(void)saveLoginFirst:(BOOL)flag;
+(BOOL)getLoginFirst;
+(void)scheduledAllLocalNoti;
+(void)cancelLocalNoti;
+(void)saveLocalNoti;
+(NSArray *)getLocalNoti;
+(void)getUserTaskHistory;


@end
