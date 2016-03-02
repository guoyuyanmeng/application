//
//  dataPickerView.m
//  MyDemo
//
//  Created by ishang on 15/4/7.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import "DatePickerView.h"

@implementation DatePickerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.opaque = NO;
        self.backgroundColor = [UIColor colorWithWhite: 0 alpha: 0.7];
        
        DateBar *_pickerBar=[[DateBar alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.frame)-260, 320, 260)];
        self.dateBar=_pickerBar;
        [self addSubview:_pickerBar];
    }
    return self;
}
@end
