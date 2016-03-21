//
//  NSString+Extension.h
//  无忧云车司机
//
//  Created by luosai19910103@163.com on 16/3/14.
//  Copyright © 2016年 wuyouyunche. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (Extension)
/**
 * 获取多行字符串到高度
 **/
- (CGFloat) heightFromWidth:(CGFloat) width fontSize:(int)size ;
/**
 *  获取单行文本宽度
 *
 *  @param font 字体
 *
 *  @return 宽度
 */
-(CGFloat) widthWithFont:(UIFont *)font;
/**
 *  获取单行文本size
 *
 *  @param font
 *
 *  @return size
 */
-(CGSize) sizeWithFont:(UIFont *)font ;
@end
