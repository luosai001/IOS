//
//  UIImage+WaterMark.m
//  ImageDemo-ObjC
//
//  Created by luosai19910103@163.com on 15/9/30.
//  Copyright © 2015年 wuyouyunche. All rights reserved.
//

#import "UIImage+WaterMark.h"

@implementation UIImage (WaterMark)

- (UIImage *)watermarkImage:(NSString *)text size :(CGSize)size{
    
    
    //1.获取上下文
    
    UIGraphicsBeginImageContext(size);

    NSLog(@"%@",NSStringFromCGSize(size));
    //2.绘制图片
    
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];

    //3.绘制水印文字
    
    CGRect rect = CGRectMake(0, size.height-80, size.width, 80);

    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
    
    style.alignment = NSTextAlignmentCenter;
    
    //文字的属性
    
    NSDictionary *dic = @{
                          
                          NSFontAttributeName:[UIFont systemFontOfSize:22],
                          
                          NSParagraphStyleAttributeName:style,
                          
                          NSForegroundColorAttributeName:[UIColor redColor]
                          
                          };
    
    //将文字绘制上去
    
    [text drawInRect:rect withAttributes:dic];
    
    //4.获取绘制到得图片
    
    UIImage *watermarkImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //5.结束图片的绘制
    
    UIGraphicsEndImageContext();

    return watermarkImage;
    
}



@end
