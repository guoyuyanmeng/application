//
//  User.h
//  MyDemo
//
//  Created by ishanghealth on 15/4/13.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
{
    NSString *device_bp;
    NSString *device_bs;
    NSString *device_wt;
    NSString *fid;
    NSString *_id;
    NSString *nickname;
    NSString *password;
    NSString *pic;
    NSString *birth;
    NSString *email;
    NSString *height;
    NSString *name;
    NSString *phoneNum;
    NSString *sex;
    NSString *weight;
    NSArray *subUsers;
    NSString *status;
}

@property (nonatomic ,copy) NSString *device_bp;
@property (nonatomic ,copy) NSString *device_bs;
@property (nonatomic ,copy) NSString *device_wt;
@property (nonatomic ,copy) NSString *fid;
@property (nonatomic ,copy) NSString *_id;
@property (nonatomic ,copy) NSString *nickname;
@property (nonatomic ,copy) NSString *password;
@property (nonatomic ,copy) NSString *pic;
@property (nonatomic ,copy) NSString *birth;
@property (nonatomic ,copy) NSString *email;
@property (nonatomic ,copy) NSString *height;
@property (nonatomic ,copy) NSString *name;
@property (nonatomic ,copy) NSString *phoneNum;
@property (nonatomic ,copy) NSString *sex;
@property (nonatomic ,copy) NSString *weight;
@property (nonatomic ,strong) NSArray *subUsers;
@property (nonatomic ,copy) NSString *status;

+(User *)paserUser:(id)value;
+(User *)pasersubUser:(id)data;
@end
