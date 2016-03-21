//
//  UIImage+WaterMark.h
//  ImageDemo-ObjC
//
//  Created by luosai19910103@163.com on 15/9/30.
//  Copyright © 2015年 wuyouyunche. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WaterMark)
- (UIImage *)watermarkImage:(NSString *)text size :(CGSize)size ;
@end
