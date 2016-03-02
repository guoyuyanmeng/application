//
//  User.m
//  MyDemo
//
//  Created by ishanghealth on 15/4/13.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import "User.h"

@implementation User

@synthesize device_bp,device_bs,device_wt,fid,_id,nickname,password,pic,birth,email,height,name,phoneNum,sex,weight;
@synthesize subUsers;
@synthesize status;

- (id)init
{
    self=[super init];
    if (self) {
        
    }
    return self;
}

+(User *)pasersubUser:(id)data
{
    User *user=[[User alloc]init];
    if ([data isKindOfClass:[NSDictionary class]]) {
        
        NSArray *keys=[data allKeys];
        for (NSString *key in keys) {
            
            id subValue=[data objectForKey:key];
            if ([key isEqualToString:@"device_bp"]) {
                
                user.device_bp=subValue;
            }
            if ([key isEqualToString:@"device_bs"]) {
                user.device_bs=subValue;
            }
            if ([key isEqualToString:@"device_wt"]) {
                user.device_wt=subValue;
            }
            if ([key isEqualToString:@"fid"]) {
                user.fid=subValue;
            }
            if ([key isEqualToString:@"id"]) {
                user._id=subValue;
            }
            if ([key isEqualToString:@"nickname"]) {
                
                user.nickname=subValue;
            }
            if ([key isEqualToString:@"password"]) {
                
                user.password=subValue;
            }
            if ([key isEqualToString:@"pic"]) {
                
                user.pic=subValue;
            }
            if ([key isEqualToString:@"userbirth"]) {
                
                user.birth=subValue;
            }
            if ([key isEqualToString:@"useremail"]) {
                
                user.email=subValue;
            }
            if ([key isEqualToString:@"userheight"]) {
                
                user.height=subValue;
            }
            if ([key isEqualToString:@"username"]) {
                user.name=subValue;
            }
            if ([key isEqualToString:@"userphone"]) {
                
                user.phoneNum=subValue;
            }
            if ([key isEqualToString:@"usersex"]) {
                
                user.sex=subValue;
            }
            if ([key isEqualToString:@"userweight"]) {
                
                user.weight=subValue;
            }
        }
        
    }
    return user;
}

+(User *)paserUser:(id)data

{
    User *user=[[User alloc]init];
    
    if ([data isKindOfClass:[NSDictionary class]]) {
        
        NSArray *keys=[data allKeys];
        for (NSString *key in keys) {
            id value=[data objectForKey:key];
            
            if ([key isEqualToString:@"patient"]) {
                if ([value isKindOfClass:[NSDictionary class]]) {
                    
                    NSArray *subKeys=[value allKeys];
                    
                    for (NSString *subKey in subKeys) {
                        id subValue=[value objectForKey:subKey];
                        
                        if ([subKey isEqualToString:@"device_bp"]) {
                            
                            user.device_bp=subValue;
                        }
                        if ([subKey isEqualToString:@"device_bs"]) {
                            user.device_bs=subValue;
                        }
                        if ([subKey isEqualToString:@"device_wt"]) {
                            user.device_wt=subValue;
                        }
                        if ([subKey isEqualToString:@"fid"]) {
                            user.fid=subValue;
                        }
                        if ([subKey isEqualToString:@"id"]) {
                            user._id=subValue;
                        }
                        if ([subKey isEqualToString:@"nickname"]) {
                            
                            user.nickname=subValue;
                        }
                        if ([subKey isEqualToString:@"password"]) {
                            
                            user.password=subValue;
                        }
                        if ([subKey isEqualToString:@"pic"]) {
                            
                            user.pic=subValue;
                        }
                        if ([subKey isEqualToString:@"userbirth"]) {
                            
                            user.birth=subValue;
                        }
                        if ([subKey isEqualToString:@"useremail"]) {
                            
                            user.email=subValue;
                        }
                        if ([subKey isEqualToString:@"userheight"]) {
                            
                            user.height=subValue;
                        }
                        if ([subKey isEqualToString:@"username"]) {
                            user.name=subValue;
                        }
                        if ([subKey isEqualToString:@"userphone"]) {
                            
                            user.phoneNum=subValue;
                        }
                        if ([subKey isEqualToString:@"usersex"]) {
                            
                            user.sex=subValue;
                        }
                        if ([subKey isEqualToString:@"userweight"]) {
                            
                            user.weight=subValue;
                        }
                        
                    }
                }
                
            }
            if ([key isEqualToString:@"status"]) {
                user.status=value;
            }
            if ([key isEqualToString:@"subUsers"]) {
                user.subUsers=value;
            }
        }
        
    }
    
    return user;
}

@end
