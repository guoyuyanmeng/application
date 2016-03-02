//
//  ThirdViewController.m
//  MyDemo
//
//  Created by ishanghealth on 15/4/8.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import "ThirdViewController.h"
#import "Common.h"
#import "MSDynamicsDrawerStyler.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)init
{
    self = [super init];
    if (self)
    {
        //设置TabBar的标题和图片
        UIImage *img = [Common OriginImage:[UIImage imageNamed:@"menu_icon_3_normal.png"]
                               scaleToSize:CGSizeMake(30, 30)];
        UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:@"练习代码" image:img tag:1];
        self.tabBarItem = item;
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    //设置导航栏标题
    self.title = @"thirdView";
    [self  addStylersFromArray:@[[MSDynamicsDrawerScaleStyler styler], [MSDynamicsDrawerFadeStyler styler]] forDirection:MSDynamicsDrawerDirectionLeft];
    
//    menuViewController = [MSMenuViewController new];
//    menuViewController.dynamicsDrawerViewController = self;
//    [self setDrawerViewController:menuViewController forDirection:MSDynamicsDrawerDirectionLeft];
//    
//    [menuViewController transitionToVC:0 withUrl:NO];
    
    //创建播放音乐的按钮
    UIButton *playAudioBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    playAudioBtn.frame=CGRectMake((self.view.frame.size.width-200)/2+40, 70, 60, 40);
    [playAudioBtn setTitle:@"播放音频" forState:UIControlStateNormal];
    [playAudioBtn addTarget:self action:@selector(playAudio) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:playAudioBtn];
     self.view.backgroundColor=[UIColor colorWithRed:50/255. green:50/255. blue:50/255. alpha:1];
    
    // 圈圈
    UIActivityIndicatorView * _loadingView = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    __weak UIActivityIndicatorView * loadingView = _loadingView;
    loadingView.center = CGPointMake(160, 250);
    loadingView.hidesWhenStopped = NO;
    [self.view addSubview: loadingView];
    [loadingView startAnimating];
    
    // 模拟延迟加载数据，因此2秒后才调用（真实开发中，可以移除这段gcd代码）
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        // 结束刷新
        [loadingView stopAnimating];
    });

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIImageView *)windowBackground
{
    if (!_windowBackground) {
        _windowBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Window_Background"]];
    }
    return _windowBackground;
}

- (void)playAudio {

    
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
