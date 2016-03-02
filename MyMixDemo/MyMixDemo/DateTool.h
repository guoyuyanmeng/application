//
//  DateTool.h
//  MyDemo
//
//  Created by ishang on 15/4/7.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateTool : NSObject
+ (NSString *)getCurrentTimeByFormat:(NSString *)format;
+ (NSString *)getCurrentTimeByFormat:(NSString *)format withOwnDate:(NSDate *)date;
+ (NSDate *)getNsDateWithStrByFormat:(NSString *)format withTimeStr:(NSString *)timestr;
+ (NSString *)getCurrentTimeStrByTimeMills:(NSString *)format withtm:(double)timemilllong;
+ (NSString *)getCurrentWeekdayInChineseWithDate:(NSDate *)date;
@end
