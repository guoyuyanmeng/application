//
//  dataBar.h
//  MyDemo
//
//  Created by ishang on 15/4/7.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DateBar : UIView

@property (nonatomic, strong)UIButton *cancleBtn;
@property (nonatomic, strong)UIButton *saveBtn;
@property (nonatomic, strong)UIDatePicker *datePicker;
@property (nonatomic, assign)UIDatePickerMode dateMode;

- (void)setDateMode:(UIDatePickerMode)_dateMode;
@end