//
//  ViewController.m
//  MyMixDemo
//
//  Created by ishanghealth on 15/4/17.
//  Copyright (c) 2015年 cmri. All rights reserved.
//

#import "MainViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface MainViewController ()
{
    UITabBarController *tabBarController;
    
    FirstViewController *firstViewController;
    SecondViewController *secondViewController;
    ThirdViewController *thirdViewController;
}

@end

@implementation MainViewController


-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    tabBarController = [[UITabBarController alloc]init];
    
    //初始各个主界面
    firstViewController = [[FirstViewController alloc]init];
    secondViewController = [[SecondViewController alloc]init];
    thirdViewController = [[ThirdViewController alloc]init];
    
    //初始化各个主界面的导航栏
    UINavigationController *firstNavigation = [[UINavigationController alloc]initWithRootViewController:firstViewController];
    UINavigationController *secondNavigation = [[UINavigationController alloc]initWithRootViewController:secondViewController];
    UINavigationController *thirdNavigation = [[UINavigationController alloc]initWithRootViewController:thirdViewController];
    
    
    NSArray *navigationArray = [NSArray arrayWithObjects:firstNavigation,
                                secondNavigation,
                                thirdNavigation,
                                nil];
    [tabBarController setViewControllers:navigationArray];
    [tabBarController.view setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:tabBarController.view];
    
    
    //    //设置tabbar背景
    //    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 49)];
    //    UIImage *img = [UIImage imageNamed:@"tabbar.png"];
    //    UIColor *color = [[UIColor alloc] initWithPatternImage:img];
    //    v.backgroundColor = color;
    //    [tabBarController.tabBar insertSubview:v atIndex:1];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
