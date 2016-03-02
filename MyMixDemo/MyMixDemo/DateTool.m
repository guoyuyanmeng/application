//
//  DateTool.m
//  MyDemo
//
//  Created by ishang on 15/4/7.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import "DateTool.h"
NSString *weekdayArray[] = {@"周六",@"周日",@"周一",@"周二",@"周三",@"周四",@"周五",@"周六"};
@implementation DateTool
+ (NSString *)getCurrentTimeByFormat:(NSString *)format{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:format];
    return [formatter stringFromDate:[NSDate date]];
}
+ (NSString *)getCurrentTimeByFormat:(NSString *)format withOwnDate:(NSDate *)date{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:format];
    return [formatter stringFromDate:date];
}
+ (NSDate *)getNsDateWithStrByFormat:(NSString *)format withTimeStr:(NSString *)timestr{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:format];
    return [formatter dateFromString:timestr];
}

+ (NSString *)getCurrentTimeStrByTimeMills:(NSString *)format withtm:(double)timemilllong{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:format];
    NSDate *curDate = [[NSDate alloc]initWithTimeIntervalSince1970:timemilllong];
    return [formatter stringFromDate:curDate];
}

+ (NSString *)getCurrentWeekdayInChineseWithDate:(NSDate *)date{
    NSCalendar *cald = [NSCalendar currentCalendar];
    NSDateComponents * comp = [cald components:NSWeekCalendarUnit|NSWeekdayCalendarUnit fromDate:date];
    return weekdayArray[comp.weekday];
}

@end
