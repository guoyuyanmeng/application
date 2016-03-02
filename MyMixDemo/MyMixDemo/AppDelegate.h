//
//  AppDelegate.h
//  MyMixDemo
//
//  Created by ishanghealth on 15/4/17.
//  Copyright (c) 2015年 cmri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
#import "User.h"
//@class MainViewController;

#define UMENG_APPKEY @"53aa750f56240bc745005040"
@protocol MSDynamicsTransDelegate <NSObject>
@optional
- (void)transitionToVC:(int)paneViewControllerType withUrl:(BOOL )type;
- (void)changeLeftReverseButtonFunction:(int)funtype sender:(UIViewController *)uivc action:(SEL)section;
- (void)needChangeAvatarInMenu:(User *)userdata;
- (void)transitionToPlan;
@end

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic )MainViewController *mainViewController;

@end

