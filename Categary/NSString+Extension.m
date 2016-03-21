//
//  NSString+Extension.m
//  无忧云车司机
//
//  Created by luosai19910103@163.com on 16/3/14.
//  Copyright © 2016年 wuyouyunche. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (CGFloat)heightFromWidth:(CGFloat)width  fontSize:(int) fontSize
{
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:fontSize],NSFontAttributeName, nil];
    
    
   CGSize size = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    
    return size.height ;

}

-(CGFloat) widthWithFont:(UIFont *)font
{
    return [self sizeWithAttributes:@{NSFontAttributeName:font}].width ;
}

-(CGSize) sizeWithFont:(UIFont *)font
{
    return [self sizeWithAttributes:@{NSFontAttributeName:font}] ;
}

@end
