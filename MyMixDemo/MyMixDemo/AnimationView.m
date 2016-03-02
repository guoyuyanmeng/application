//
//  AnimationView.m
//  MyMixDemo
//
//  Created by kang on 16/1/20.
//  Copyright © 2016年 cmri. All rights reserved.
//

#import "AnimationView.h"

@implementation AnimationView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void) layoutSubviews {
    
    
}

- (void) drawRect:(CGRect)rect {
    
    
    
    CGPoint point = self.center;//圆心
    CGFloat r = point.x * 2 ;//直径
    
    //注意：但凡通过Quartz2D中带有creat/copy/retain方法创建出来的值都必须要释放
    //获取图形上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    
    //画直线
    CGMutablePathRef linePath=CGPathCreateMutable();
    CGPathMoveToPoint(linePath, NULL, 0, 0);
    CGPathAddLineToPoint(linePath, NULL, point.x*2, point.y*2);
    CGContextAddPath(ctx, linePath);
    
    
    //画一个圆
    CGMutablePathRef circlePath=CGPathCreateMutable();
    CGPathAddEllipseInRect(circlePath, NULL, CGRectMake(0, point.y -r/2, r/2, r/2));
    CGPathAddEllipseInRect(circlePath, NULL, self.bounds);
    CGContextAddPath(ctx, circlePath);
    
    //画一个正方形
    CGMutablePathRef squarePath=CGPathCreateMutable();
    CGPathAddRect(squarePath, NULL, CGRectMake(0, point.y -r/2, point.x *2/2, point.x *2/2));
    CGContextAddPath(ctx, squarePath);
    
    //渲染
    CGContextStrokePath(ctx);
    //释放前面创建的两条路径
    CGPathRelease(linePath);
    CGPathRelease(circlePath);
    
    
    
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 1, 0.5, 0.5, 1.0);//线条颜色
    CGContextSetLineWidth(context, 2.0);
    
    //写文字
    NSString *founcText = @"IOS Quartz 各种绘制图形用法";
    NSString *pointText = [NSString stringWithFormat:@"point(%d,%d)" ,(int)point.x,(int)point.y];
//    UIFont  *font = [UIFont boldSystemFontOfSize:18.0];
//    [founcText drawInRect:CGRectMake(20, 60, 280, 300) withFont:font];//旧版
    [founcText drawInRect:CGRectMake(70, 80, 250, 60) withAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                                       [UIFont fontWithName:@"HelveticaNeue-Bold" size:18],NSFontAttributeName,
                                                                       [UIColor colorWithRed:1.0 green:0.5 blue:0.5 alpha:1.0],
                                                                       NSForegroundColorAttributeName, nil]];
    [pointText drawInRect:CGRectMake(point.x-85, point.y , 150, 30) withAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                                      [UIFont fontWithName:@"HelveticaNeue-Bold" size:18],NSFontAttributeName,
                                                                      [UIColor colorWithRed:1.0 green:0.5 blue:0.5 alpha:1.0],
                                                                      NSForegroundColorAttributeName, nil]];
    
    //直线
    CGContextMoveToPoint(context, 0, point.y*2);
    CGContextAddLineToPoint(context, point.x*2, 0);
    CGContextStrokePath(context);
    
    //椭圆,矩形
    CGRect aRect= CGRectMake(point.x, point.y - r/2, r/2, r/2);
    CGContextAddRect(context, aRect); //矩形
    CGContextAddRect(context, CGRectMake(0, point.y, r/2, r/2)); //矩形
    CGContextAddEllipseInRect(context, aRect); //椭圆
    CGContextAddEllipseInRect(context, CGRectMake(0, point.y - r/2 , r, r)); //椭圆
    CGContextDrawPath(context, kCGPathStroke);
    
    //NO.3画一个正方形图形 一个圆形
    CGContextSetRGBFillColor(context, 0, 0.25, 0, 0.5);
    CGContextFillRect(context, CGRectMake(r/4, point.y - r/4, r/4, r/4));
    CGContextFillEllipseInRect(context, CGRectMake(r/2, point.y - r/4, r/4, r/4));
    CGContextStrokePath(context);
    
    //视图渐变
    CGContextClip(context);
    CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
    CGFloat colors[] =
    {
    204.0 / 255.0, 224.0 / 255.0, 244.0 / 255.0, 0.2,
    29.0 / 255.0, 156.0 / 255.0, 215.0 / 255.0, 0.2,
    0.0 / 255.0,  50.0 / 255.0, 126.0 / 255.0, 0.2,
    };
    CGGradientRef gradient = CGGradientCreateWithColorComponents
    (rgb, colors, NULL, sizeof(colors)/(sizeof(colors[0])*4));
    CGColorSpaceRelease(rgb);
    CGContextDrawLinearGradient(context, gradient,CGPointMake
    (0.0,0.0) ,CGPointMake(0.0,self.frame.size.height),
    kCGGradientDrawsBeforeStartLocation);
    
    //画弧线
    //弧线的是通过指定两个切点，还有角度，调用CGContextAddArcToPoint()绘制
    //point.x = r/2
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextMoveToPoint(context, point.x, point.y);
    CGContextAddArcToPoint(context, point.x  ,point.y + r/4, point.x + r/4, point.y + r/2, 200 );
    CGContextMoveToPoint(context, point.x  ,point.y );
    CGContextAddArcToPoint(context, point.x  ,point.y + r/4, point.x - r/4, point.y + r/2, 200);
    CGContextAddArc(context, point.x, point.y, 163, 111*(M_PI/180), 69*(M_PI/180), 1);
//    CGContextAddArc(context, point.x, point.y, 185, 0, 360*(M_PI/180), 0);
    CGContextStrokePath(context);
    
    
    //绘制贝兹曲线
    //贝兹曲线是通过移动一个起始点，然后通过两个控制点,还有一个中止点，调用CGContextAddCurveToPoint() 函数绘制
    CGContextSetStrokeColorWithColor(context, [UIColor greenColor].CGColor);
    CGContextMoveToPoint(context, 10, 10);
    CGContextAddCurveToPoint(context, 0, 50, 300, 250, 300, 400);
    CGContextStrokePath(context);
    
    //绘制二次贝兹曲线
    CGContextSetStrokeColorWithColor(context, [UIColor orangeColor].CGColor);
    CGContextMoveToPoint(context, 10, 200);
    CGContextAddQuadCurveToPoint(context, 150, 10, 300, 200);
    CGContextStrokePath(context);
    
    
    
    //绘制虚线
    CGContextSetLineWidth(context, 3.0);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGFloat dashArray[] = {2,6,4,2};
    CGContextSetLineDash(context, 3, dashArray, 4);//跳过3个再画虚线，所以刚开始有6-（3-2）=5个虚点
    CGContextMoveToPoint(context, 10, 200);
    CGContextAddQuadCurveToPoint(context, 150, 10, 300, 200);
    CGContextStrokePath(context);
    
    
    //绘制图片
    UIImage* myImageObj = [UIImage imageNamed:@"dog.jpg"];
    CGImageRef image = myImageObj.CGImage;
//    [myImageObj drawAtPoint:CGPointMake(0, 0)];
//    [myImageObj drawInRect:CGRectMake(0, 0, 320, 480)];
    
    
    //
//    CGContextSaveGState(context);
//    CGRect touchRect = CGRectMake(60, 80, myImageObj.size.width, myImageObj.size.height);
//    CGContextDrawImage(context, touchRect, image);
//    CGContextRestoreGState(context);
    
    
//    //图片翻转
//    CGContextSaveGState(context);
//    CGContextRotateCTM(context, M_PI);
//    CGContextTranslateCTM(context, -myImageObj.size.width/4, -myImageObj.size.height/4);
//    CGRect touchRect = CGRectMake(0, 0, myImageObj.size.width/4, myImageObj.size.height/4);
//    CGContextDrawImage(context, touchRect, image);
//    CGContextRestoreGState(context);
    
    
    //图片旋转
    CGContextSaveGState(context);
    CGAffineTransform myAffine = CGAffineTransformMakeRotation(M_PI);
    myAffine = CGAffineTransformTranslate(myAffine, -myImageObj.size.width/4, -myImageObj.size.height/4);
    CGContextConcatCTM(context, myAffine);
    
    CGContextRotateCTM(context, M_PI);
    CGContextTranslateCTM(context, -myImageObj.size.width/4, -myImageObj.size.height/4);
    
    CGRect touchRect = CGRectMake(0, 0, myImageObj.size.width/4, myImageObj.size.height/4);
    CGContextDrawImage(context, touchRect, image);
    CGContextRestoreGState(context);

//    CGContextMoveToPoint(context, 100, 100);
//    CGContextAddArcToPoint(context, 100,200, 300,200, 100);
//    CGContextMoveToPoint(context, 100, 100);
//    CGContextAddLineToPoint(context, 300, 200);
//    CGContextAddLineToPoint(context, 100, 200);
//    CGContextStrokePath(context);
    
}

@end
