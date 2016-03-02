//
//  dataBar.m
//  MyDemo
//
//  Created by ishang on 15/4/7.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import "DateBar.h"

@implementation DateBar
@synthesize cancleBtn;
@synthesize saveBtn;
@synthesize datePicker;
@synthesize dateMode;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor whiteColor];
        
        
        UIView *grayview=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 50)];
        grayview.backgroundColor=[UIColor colorWithRed:239/255. green:239./255 blue:239./255 alpha:1.];
        [self addSubview:grayview];
        
        UIButton *cancelButton=[[UIButton alloc]initWithFrame:CGRectMake(10, 5, 40, 40)];
        [cancelButton setTitle:@"取消" forState:UIControlStateNormal];
        [cancelButton setTitleColor:[UIColor colorWithRed:27./255 green:137./255 blue:204./255 alpha:1.0] forState:UIControlStateNormal];
        self.cancleBtn=cancelButton;
        [grayview addSubview:cancelButton];
        
        
        UIButton *saveButton=[[UIButton alloc]initWithFrame:CGRectMake(CGRectGetWidth(self.frame)-10-40, 5, 40, 40)];
        [saveButton setTitle:@"保存" forState:UIControlStateNormal];
        [saveButton setTitleColor:[UIColor colorWithRed:27./255 green:137./255 blue:204./255 alpha:1.0] forState:UIControlStateNormal];
        self.saveBtn=saveButton;
        [grayview addSubview:saveButton];
        
        
        UIDatePicker *_datePicker=[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 40, 0, 0)];
        _datePicker.datePickerMode=UIDatePickerModeDateAndTime;
        self.datePicker=_datePicker;
        [self addSubview:_datePicker];
        
        
    }
    return self;
}


- (void)setDateMode:(UIDatePickerMode)_dateMode
{
    
    self.datePicker.datePickerMode=_dateMode;
    
}
@end
