//
//  UIView+Image.m
//  无忧云车用户端
//
//  Created by luosai19910103@163.com on 15/8/24.
//  Copyright (c) 2015年 wuyouyunche. All rights reserved.
//

#import "UIView+Image.h"

@implementation UIView (Image)
- (UIImage *)getImageFromView{
    
    UIGraphicsBeginImageContext(self.bounds.size);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
