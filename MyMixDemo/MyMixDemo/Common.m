//
//  Common.m
//  MyDemo
//
//  Created by ishanghealth on 15/4/9.
//  Copyright (c) 2015年 commondec. All rights reserved.
//

#import "Common.h"

@implementation Common


#pragma 图片缩放大小
+(UIImage*) OriginImage:(UIImage *)image scaleToSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);  //size 为CGSize类型，即你所需要的图片尺寸
    
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return scaledImage;   //返回的就是已经改变的图片
}
@end
