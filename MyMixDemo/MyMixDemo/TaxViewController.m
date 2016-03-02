//
//  TaxViewController.m
//  MyDemo
//
//  Created by ishanghealth on 15/4/14.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import "TaxViewController.h"

@interface TaxViewController ()
{
    float income;
}
@property (nonatomic ,copy)UITextField *pre_salary;//税前工资
@property (nonatomic ,copy)UILabel *salary;//税后工资
@end


@implementation TaxViewController

- (void) loadView
{
    self.title = @"计算应缴税";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIButton *countBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [countBtn setBackgroundImage:[UIImage imageNamed:@""]  forState:UIControlStateNormal];
//    [countBtn addTarget:self action:@selector(countTax) forControlEvents:UIControlEventTouchUpInside];
//    [countBtn setTitle:@"计算" forState:UIControlStateNormal];
//    countBtn.titleLabel.font = [UIFont systemFontOfSize:14.0];
//    countBtn.frame = CGRectMake(100, 250, 60, 450);
//    //控制按钮的四角的曲度
//    countBtn.layer.cornerRadius = 3.0;
//    //控制按钮的边框线宽度
//    countBtn.layer.borderWidth = 1.0f;
//    //控制按钮边框颜色
//    countBtn.layer.borderColor = [[UIColor grayColor]CGColor];
//    [self.view addSubview:countBtn];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)countTax
{
    
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
