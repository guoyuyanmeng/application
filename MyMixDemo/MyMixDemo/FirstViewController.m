//
//  ViewController.m
//  MyDemo
//
//  Created by ishang on 15/4/2.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import <objc/runtime.h>

#import "FirstViewController.h"
#import "MyLableViewController.h"
#import "PlayAudio.h"
#import "AppDelegate.h"
#import "DateTool.h"
#import "Common.h"

#import "AnimationView.h"

@interface FirstViewController ()

@property (nonatomic, strong)UILabel *tapLabel;
@property (nonatomic, strong)UILabel *calendarLabel;
@end


static const char key;
static int count = 0;
@implementation FirstViewController
@synthesize datePicker;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //设置TabBar的标题和图片
        UIImage *img = [Common OriginImage:[UIImage imageNamed:@"menu_icon_1_normal.png"]
                               scaleToSize:CGSizeMake(30, 30)];
        UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:@"练习代码" image:img tag:1];
        self.tabBarItem = item;
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated
{
    //设置导航栏标题
    self.title = @"firstView";
    
   
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AnimationView *animationView = [[AnimationView alloc]init];
    animationView.bounds = self.view.bounds;
    animationView.backgroundColor = [UIColor whiteColor];
    
    self.view = animationView;
    
    //创建播放音乐的按钮
    UIButton *playAudioBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    playAudioBtn.frame=CGRectMake((self.view.frame.size.width-200)/2+40, 70, 60, 40);
    [playAudioBtn setTitle:@"播放音频" forState:UIControlStateNormal];
    [playAudioBtn addTarget:self action:@selector(playAudio) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:playAudioBtn];
//
//    
//    //创建播放音乐的按钮
//    UIButton *dataPicker=[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    dataPicker.frame=CGRectMake((self.view.frame.size.width-200)/3, 110, 60, 40);
//    [dataPicker setTitle:@"日历" forState:UIControlStateNormal];
//    [dataPicker addTarget:self action:@selector(dataPicker) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:dataPicker];
    
//    //添加日历Label
//    _calendarLabel = [[UILabel alloc]initWithFrame:CGRectMake((self.view.frame.size.width-200)/2+40, 110, 150, 40)];
//    [_calendarLabel setBackgroundColor:[UIColor clearColor]];
//    [_calendarLabel setTextColor:[UIColor colorWithRed:150/255.00 green:150/255.00 blue:150/255.0 alpha:1.0]];
//    [_calendarLabel setText:[DateTool getCurrentTimeByFormat:@"yyyy-MM-dd HH:mm"]];
//    [_calendarLabel setUserInteractionEnabled:NO];
//    [self.view addSubview:_calendarLabel];
//    
//    
//    //UIlabel的初始化
//    _tapLabel = [[UILabel alloc]init];
//    _tapLabel.frame = CGRectMake(self.view.frame.size.width/3 -50, 150, 160, 40);
//    [_tapLabel setBackgroundColor:[UIColor grayColor]];
////    [_tapLabel setFont:[UIFont systemFontOfSize:10]];
//    [_tapLabel setTextColor:[UIColor colorWithRed:150/255.00 green:150/255.00 blue:150/255.0 alpha:1.0]];
//    [_tapLabel setText:@"可点击的label"];
//    [_tapLabel setUserInteractionEnabled:YES];
//    [self.view addSubview:_tapLabel];
    // Do any additional setup after loading the view, typically from a nib.
    
//    //添加点击事件
//    UITapGestureRecognizer*singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapLabelAction:)];
//    singleTap.numberOfTapsRequired = 1;
//    [_tapLabel addGestureRecognizer:singleTap];
    
    //add CALayer 动画 view
//    [self buildAnimotionView];
    
    //add Graphics
//    [self buildGraphicsView];
}

#pragma mark - Graphics  画图
- (void) buildGraphicsView {
//    CGFloat radius;
    //    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 200,2*radius , 2*radius)
    //                                                    cornerRadius:radius];
    

    
    
//    [self.view setNeedsDisplay];
}
#pragma mark - CALayer 动画
- (void) buildAnimotionView {

    UIImageView *imageView = [[UIImageView alloc]init];
//    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.frame = CGRectMake(200, 300, 15, 15);
    imageView.backgroundColor = [UIColor orangeColor];
    imageView.layer.cornerRadius = 7.5;
    imageView.layer.masksToBounds = YES;
    [self.view addSubview:imageView];
    
    CAReplicatorLayer *replicatorLayer = [CAReplicatorLayer layer];
    replicatorLayer.backgroundColor = [UIColor grayColor].CGColor;
    replicatorLayer.bounds = CGRectMake(200,300,60, 40);
//    replicatorLayer.bounds = self.view.bounds;
    replicatorLayer.position = self.view.center;
    replicatorLayer.preservesDepth = YES;
    [replicatorLayer addSublayer:imageView.layer];
    [self.view.layer addSublayer:replicatorLayer];
    
    CGFloat count = 3.0;
    replicatorLayer.instanceDelay = 1.0 / count;
    replicatorLayer.instanceCount = count;
    //    相对于_replicatorLayer.position旋转
    replicatorLayer.instanceTransform = CATransform3DMakeRotation((0.0 * M_PI) / count, 0, 0, 0);
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animation.duration = 1;
    animation.repeatCount = MAXFLOAT;
    //    animation.autoreverses = YES;
    //从原大小变小时,动画 回到原状时不要动画
    animation.fromValue = @(1);
    animation.toValue = @(0.3);
    [imageView.layer addAnimation:animation forKey:nil];

}


#pragma 播放音频
-(void)playAudio
{
//    PlayAudio *localPlayer = [[PlayAudio alloc]init];
//    [localPlayer playAudio];
    
    //添加日历Label
    UILabel *calendarLabel2 = objc_getAssociatedObject(self, &key);
    if (!calendarLabel2) {
        calendarLabel2 = [[UILabel alloc]init];
        [calendarLabel2 setBackgroundColor:[UIColor clearColor]];
        [calendarLabel2 setTextColor:[UIColor colorWithRed:150/255.00 green:150/255.00 blue:150/255.0 alpha:1.0]];
        
        [calendarLabel2 setUserInteractionEnabled:NO];
    }
    
    [calendarLabel2 setFrame:CGRectMake((self.view.frame.size.width-200)/2+40, count * 20, 150, 40)];
    [calendarLabel2 setText:[DateTool getCurrentTimeByFormat:@"yyyy-MM-dd HH:mm"]];
    
    
    if (calendarLabel2 != _calendarLabel) {
//        if (count == 0) {
//            [_calendarLabel removeFromSuperview];
//        }else {
//            [calendarLabel2 removeFromSuperview];
//        }
        
        [_calendarLabel removeFromSuperview];
        [self.view addSubview:calendarLabel2];
        
        [self willChangeValueForKey:@"calendarLabel"]; // KVO
        objc_setAssociatedObject(self, &key,
                                 calendarLabel2, OBJC_ASSOCIATION_ASSIGN);
        [self didChangeValueForKey:@"calendarLabel"]; // KVO

    }
    
    count ++;
}

#pragma 日历选择器
-(void)dataPicker
{
    AppDelegate *_app=(AppDelegate *)[UIApplication sharedApplication].delegate;
    if (!datePicker)
    {
        DatePickerView *_datePicker=[[DatePickerView alloc]initWithFrame:CGRectMake(0, 0,CGRectGetWidth( self.view.frame), CGRectGetHeight( self.view.frame))];
        [_datePicker.dateBar.saveBtn addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_datePicker.dateBar.cancleBtn addTarget:self action:@selector(cancelAction:) forControlEvents:UIControlEventTouchUpInside];
        self.datePicker=_datePicker;
        [self.datePicker.dateBar setDateMode:UIDatePickerModeDateAndTime];
        [_app.window addSubview:datePicker];
    }
    datePicker.hidden = NO;
}

#pragma 响应label的点击事件
-(void)tapLabelAction:(UITapGestureRecognizer *)singelTap
{
    MyLableViewController* labelViewController = [[MyLableViewController alloc]init];
    labelViewController.labelStr = _tapLabel.text;
    [self.navigationController pushViewController:labelViewController animated:YES];
}

#pragma 日历选择器确定按钮响应方法
-(void)saveAction:(id)sender
{
    UIButton *button=(UIButton *)sender;
    
    if ([button isEqual:datePicker.dateBar.saveBtn]) {
        datePicker.hidden=YES;
        
        NSString *time= [DateTool getCurrentTimeByFormat:@"yyyy-MM-dd HH:mm" withOwnDate:datePicker.dateBar.datePicker.date];
        NSLog(@"当前选择器的日期是%@",time);
        [self.calendarLabel setText:time];
//        NSString *js=[[NSString alloc]initWithFormat:@"javascript:nativeToWeb('4;1;%@')",time];
//        [self.webView stringByEvaluatingJavaScriptFromString:js];
        
    }
//    if ([button isEqual:alphaView.pickerBar.saveBtn]) {
//        
//        alphaView.hidden=YES;
//        NSString *value=alphaView.result;
//        NSString *js=[[NSString alloc]initWithFormat:@"javascript:nativeToWeb('4;0;%@')",value];
//        [self.webView stringByEvaluatingJavaScriptFromString:js];
//    }

}

#pragma 日历选择器取消按钮方法
-(void)cancelAction:(id)sender
{
    UIButton *button=(UIButton *)sender;
    if ([button isEqual:datePicker.dateBar.cancleBtn]) {
        datePicker.hidden=YES;
    }
//    if ([button isEqual:alphaView.pickerBar.cancleBtn]) {
//        
//        alphaView.hidden=YES;
//    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
