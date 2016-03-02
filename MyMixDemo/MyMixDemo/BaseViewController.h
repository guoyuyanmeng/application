//
//  BaseViewController.h
//  MyDemo
//
//  Created by ishanghealth on 15/4/15.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface BaseViewController : UIViewController

@property (nonatomic) id<MSDynamicsTransDelegate> msdelegate;
@property (nonatomic) int currentInex;
@property (nonatomic) BOOL type;
- (void)reverseNow;
@end
