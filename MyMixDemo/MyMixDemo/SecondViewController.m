//
//  SecondViewController.m
//  MyDemo
//
//  Created by ishanghealth on 15/4/8.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import "SecondViewController.h"
#import "TaxViewController.h"
#import "Common.h"
@interface SecondViewController ()

@property (nonatomic,strong)UIPageControl *pageControl;
@end

@implementation SecondViewController

- (id)init
{
    self = [super init];
    if (self) {
        //设置TabBar的标题和图片 menu_icon_2_normal.png
        UIImage *img = [Common OriginImage:[UIImage imageNamed:@"menu_icon_2_normal.png"]
                               scaleToSize:CGSizeMake(30, 30)];
        UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:@"练习代码" image:img tag:1];
        self.tabBarItem = item;
    }
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    //设置导航栏标题
    self.title = @"secondView";
    
    //隐藏导航栏
    [self.navigationController setNavigationBarHidden:NO];
   
}


- (void)loadView
{
    [super loadView];
    
//    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 200, 30, 30)];
//    imageView.image = [UIImage imageNamed:@"btu_sync_a.png"];
//    [self.view addSubview:imageView];
//    
//    
//    
//    UIButton *imgBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [imgBtn setBackgroundImage:[Common OriginImage:[UIImage imageNamed:@"btu_sync_a.png"]
//                                       scaleToSize:CGSizeMake(30, 30)]
//                      forState:UIControlStateNormal];
//    [imgBtn addTarget:self action:@selector(actionBtnMethod) forControlEvents:UIControlEventTouchUpInside];
//    [imgBtn setTitle:@"" forState:UIControlStateNormal];
//    imgBtn.titleLabel.font = [UIFont systemFontOfSize:14.0];
//    imgBtn.frame = CGRectMake(100, 250, 30, 30);
//    //控制按钮的四角的曲度
//    imgBtn.layer.cornerRadius = 3.0;
//    //控制按钮的边框线宽度
//    imgBtn.layer.borderWidth = 1.0f;
//    //控制按钮边框颜色
//    imgBtn.layer.borderColor = [[UIColor grayColor]CGColor];
//    [self.view addSubview:imgBtn];
    
}


- (void)viewWillUnload {

    
}
- (void)viewDidUnload  {}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"secondView";
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 200, 30, 30)];
    imageView.image = [UIImage imageNamed:@"btu_sync_a.png"];
    [self.view addSubview:imageView];
    
    UIButton *imgBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [imgBtn setBackgroundImage:[Common OriginImage:[UIImage imageNamed:@"btu_sync_a.png"]
                                       scaleToSize:CGSizeMake(30, 30)]
                      forState:UIControlStateNormal];
    [imgBtn addTarget:self action:@selector(actionBtnMethod) forControlEvents:UIControlEventTouchUpInside];
    [imgBtn setTitle:@"" forState:UIControlStateNormal];
    imgBtn.titleLabel.font = [UIFont systemFontOfSize:14.0];
    imgBtn.frame = CGRectMake(100, 250, 30, 30);
    //控制按钮的四角的曲度
    imgBtn.layer.cornerRadius = 3.0;
    //控制按钮的边框线宽度
    imgBtn.layer.borderWidth = 1.0f;
    //控制按钮边框颜色
    imgBtn.layer.borderColor = [[UIColor grayColor]CGColor];
    [self.view addSubview:imgBtn];
    
//    //添加状态栏动态
//    self.pageControl=[[UIPageControl alloc]initWithFrame:CGRectMake(0, 0, 100, 20)];
//    self.pageControl.backgroundColor=[UIColor clearColor];
//    self.pageControl.numberOfPages=3;
//    [self setPageControl:self.pageControl];
    
}

- (BOOL)isViewLoaded
{
    BOOL b = [super isViewLoaded];
    return b;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setPageControl:(UIPageControl *)pageControl
{
    UIWindow *pageWindow=[[UIWindow alloc]initWithFrame:CGRectMake(0, 0, 100, 20)];
    pageWindow.center=CGPointMake(160, 10);
    [pageWindow addSubview:pageControl];
    pageWindow.backgroundColor=[UIColor blackColor];
    [pageWindow setHidden:YES];
    pageWindow.windowLevel = UIWindowLevelStatusBar + 1.0f;
    pageWindow.alpha=1;
    
    NSTimer *pageTimer = [NSTimer timerWithTimeInterval:0.5f
                                                 target:self
                                               selector:@selector(pageNumberChanged)
                                               userInfo:nil
                                                repeats:YES];
    
    [[NSRunLoop mainRunLoop]addTimer:pageTimer forMode:NSDefaultRunLoopMode];
    
}

//-(void)pageNumberChanged
//{
//    static int currentNum = 0;
//    currentNum++;
//    currentNum = currentNum>2 ?0:currentNum;
//    self.pageControl.currentPage = currentNum;
//}


- (void)actionBtnMethod
{
    TaxViewController *taxViewController = [[TaxViewController alloc]init];
    [self.navigationController pushViewController:taxViewController animated:YES];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
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
