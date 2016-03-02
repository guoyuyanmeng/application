//
//  UserINFDefault.m
//  MyDemo
//
//  Created by ishanghealth on 15/4/13.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import "UserINFDefault.h"
#import "AppDelegate.h"
#define CURRENT_PID @"current_pid"

static User *loginUser = nil;
static User *subLoginUser=nil;
@implementation UserINFDefault


+(void)setFirstLogin
{
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"everLaunched"]) {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"everLaunched"];
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"firstLaunch"];
    }
    else{
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"firstLaunch"];
    }
    
}


+(BOOL)isFirstLogin
{
    BOOL isLaunched= [[NSUserDefaults standardUserDefaults] boolForKey:@"firstLaunch"];
    return isLaunched;
}

+(void)removeFirstLogin
{
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"everLaunched"];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"firstLaunch"];
    
}



+(void)saveLoginTypeINF:(User *)user
{
    NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
    [userDefaults setObject:user.device_bp forKey:@"devide_bp"];
    [userDefaults setObject:user.device_bs forKey:@"device_bs"];
    [userDefaults setObject:user.device_wt forKey:@"device_wt"];
    [userDefaults setObject:user.fid forKey:@"fid"];
    [userDefaults setObject:user._id forKey:@"id"];
    
    [userDefaults setObject:user.nickname forKey:@"nickname"];
    [userDefaults setObject:user.password forKey:@"password"];
    [userDefaults setObject:user.pic forKey:@"pic"];
    [userDefaults setObject:user.birth forKey:@"birth"];
    [userDefaults setObject:user.email forKey:@"email"];
    [userDefaults setObject:user.height forKey:@"height"];
    [userDefaults setObject:user.name forKey:@"name"];
    [userDefaults setObject:user.phoneNum forKey:@"phonenum"];
    [userDefaults setObject:user.sex forKey:@"sex"];
    [userDefaults setObject:user.weight forKey:@"weight"];
    [userDefaults setObject:user.subUsers forKey:@"subUsers"];
    [userDefaults setObject:user.status forKey:@"status"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}


+(User *)getLoginUser
{
    if (!loginUser) {
        loginUser=[[User alloc]init];
    }
    
    NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
    
    loginUser.device_bp=[userDefaults objectForKey:@"devide_bp"];
    loginUser.device_bs=[userDefaults objectForKey:@"device_bs"];
    loginUser.device_wt=[userDefaults objectForKey:@"device_wt"];
    loginUser.fid=[userDefaults objectForKey:@"fid"];
    loginUser._id=[userDefaults objectForKey:@"id"];
    loginUser.nickname=[userDefaults objectForKey:@"nickname"];
    loginUser.password=[userDefaults objectForKey:@"password"];
    loginUser.pic=[userDefaults objectForKey:@"pic"];
    loginUser.birth=[userDefaults objectForKey:@"birth"];
    loginUser.email=[userDefaults objectForKey:@"email"];
    loginUser.height=[userDefaults objectForKey:@"height"];
    loginUser.name=[userDefaults objectForKey:@"name"];
    loginUser.phoneNum=[userDefaults objectForKey:@"phonenum"];
    loginUser.sex=[userDefaults objectForKey:@"sex"];
    loginUser.weight=[userDefaults objectForKey:@"weight"];
    loginUser.subUsers=[userDefaults objectForKey:@"subUsers"];
    loginUser.status=[userDefaults objectForKey:@"status"];
    
    return loginUser;
    
}

+(void)removeLoginUser
{
    
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    
    [userDefault removeObjectForKey:@"devide_bp"];
    [userDefault removeObjectForKey:@"device_bs"];
    [userDefault removeObjectForKey:@"device_wt"];
    [userDefault removeObjectForKey:@"fid"];
    [userDefault removeObjectForKey:@"id"];
    [userDefault removeObjectForKey:@"nickname"];
    [userDefault removeObjectForKey:@"password"];
    [userDefault removeObjectForKey:@"pic"];
    [userDefault removeObjectForKey:@"birth"];
    [userDefault removeObjectForKey:@"email"];
    [userDefault removeObjectForKey:@"height"];
    [userDefault removeObjectForKey:@"name"];
    [userDefault removeObjectForKey:@"phonenum"];
    [userDefault removeObjectForKey:@"sex"];
    [userDefault removeObjectForKey:@"weight"];
    [userDefault removeObjectForKey:@"subUsers"];
    [userDefault removeObjectForKey:@"status"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

+(void)saveSubTypeINF:(User *)user
{
    
    NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
    [userDefaults setObject:user.device_bp forKey:@"s_devide_bp"];
    [userDefaults setObject:user.device_bs forKey:@"s_device_bs"];
    [userDefaults setObject:user.device_wt forKey:@"s_device_wt"];
    [userDefaults setObject:user.fid forKey:@"s_fid"];
    [userDefaults setObject:user._id forKey:@"s_id"];
    
    [userDefaults setObject:user.nickname forKey:@"s_nickname"];
    [userDefaults setObject:user.password forKey:@"s_password"];
    [userDefaults setObject:user.pic forKey:@"s_pic"];
    [userDefaults setObject:user.birth forKey:@"s_birth"];
    [userDefaults setObject:user.email forKey:@"s_email"];
    [userDefaults setObject:user.height forKey:@"s_height"];
    [userDefaults setObject:user.name forKey:@"s_name"];
    [userDefaults setObject:user.phoneNum forKey:@"s_phonenum"];
    [userDefaults setObject:user.sex forKey:@"s_sex"];
    [userDefaults setObject:user.weight forKey:@"s_weight"];
    [userDefaults setObject:user.status forKey:@"s_status"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}


+(User *)getSubLoginUser
{
    
    if (!subLoginUser) {
        subLoginUser=[[User alloc]init];
    }
    
    NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
    
    subLoginUser.device_bp=[userDefaults objectForKey:@"s_devide_bp"];
    subLoginUser.device_bs=[userDefaults objectForKey:@"s_device_bs"];
    subLoginUser.device_wt=[userDefaults objectForKey:@"s_device_wt"];
    subLoginUser.fid=[userDefaults objectForKey:@"s_fid"];
    subLoginUser._id=[userDefaults objectForKey:@"s_id"];
    subLoginUser.nickname=[userDefaults objectForKey:@"s_nickname"];
    subLoginUser.password=[userDefaults objectForKey:@"s_password"];
    subLoginUser.pic=[userDefaults objectForKey:@"s_pic"];
    subLoginUser.birth=[userDefaults objectForKey:@"s_birth"];
    subLoginUser.email=[userDefaults objectForKey:@"s_email"];
    subLoginUser.height=[userDefaults objectForKey:@"s_height"];
    subLoginUser.name=[userDefaults objectForKey:@"s_name"];
    subLoginUser.phoneNum=[userDefaults objectForKey:@"s_phoneNum"];
    subLoginUser.sex=[userDefaults objectForKey:@"s_sex"];
    subLoginUser.weight=[userDefaults objectForKey:@"s_weight"];
    subLoginUser.status=[userDefaults objectForKey:@"s_status"];
    
    return subLoginUser;
}


+(void)saveCurrentPid:(NSString *)pid
{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    [userDefault setObject:pid forKey:CURRENT_PID];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+(NSString *)getCurrentPid
{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    NSString *str=[NSString stringWithFormat:@"%@",[userDefault objectForKey:CURRENT_PID]];
    return str;
}

+(void)removeCurrentPid
{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    [userDefault removeObjectForKey:CURRENT_PID];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+(void)saveLoginType:(BOOL)type
{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    [userDefault setBool:type forKey:@"loginType"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+(BOOL)getLoginType
{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    BOOL isSub=[userDefault boolForKey:@"loginType"];
    return isSub;
}

+(void)saveRememberState:(BOOL)state
{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    [userDefault setBool:state forKey:@"remember"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}
+(BOOL)getRememberState
{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    BOOL remember=[userDefault boolForKey:@"remember"];
    return remember;
}

+(void)saveAutoLoginState:(BOOL)state
{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    [userDefault setBool:state forKey:@"autoLogin"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

+(BOOL)getAutoLoginState
{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    BOOL autoLogin=[userDefault boolForKey:@"autoLogin"];
    return autoLogin;
    
}

//+(NSArray *)getLocalNoti
//{
//    NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
//    User *user=[self getLoginUser];
//    NSString *key=[[NSString alloc]initWithFormat:@"%@_%@_%@",user.phoneNum,user._id,@"noti"];
//    
//    NSArray *newArr=[ud objectForKey:key];
//    
//    NSMutableArray *localArr=[[NSMutableArray alloc]init];
//    
//    for (NSDictionary *dict in newArr) {
//        NSDate *fireDate=[dict objectForKey:@"fireDate"];
//        NSString *alertBody=[dict objectForKey:@"alertBody"];
//        NSDictionary *info=[dict objectForKey:@"userInfo"];
//        
//        
//        [localArr addObject:[self setLocationNotification:fireDate body:alertBody info:info]];
//    }
//    
//    return localArr;
//}
//
//+(void)cancelLocalNoti
//{
//    [[UIApplication sharedApplication]cancelAllLocalNotifications];
//    
//}




@end
