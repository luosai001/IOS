//
//  NSDate+Extension.h
//  无忧云车司机
//
//  Created by luosai19910103@163.com on 15/10/8.
//  Copyright © 2015年 wuyouyunche. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)

/**
 *  获取时间戳
 *
 *  @param dateString 时间字符串
 *  @param format     格式
 *
 *  @return 时间戳
 */
+(NSTimeInterval )timeIntervalfromDateString:(NSString * )dateString DateFormat:(NSString *)format ;
/**
 *  时间转字符串
 *
 *  @param date   时间
 *  @param format 格式
 *
 *  @return 字符串
 */
+(NSString *)stringfromDate:(NSDate *)date DateFormat:(NSString *)format ;
/**
 *  字符串转时间
 *
 *  @param dateString 字符串
 *  @param format     格式
 *
 *  @return 时间
 */
+(NSDate*)datefromDateString:(NSString *)dateString DateFormat:(NSString *)format ;

/**
 *  判断某天所在月份多少天，第几天
 *
 *  @param inputDate 日期
 *
 *  @return range
 */
+(NSRange ) dayRangeInMonth:(NSDate *)inputDate;
/**
 *  根据下标获取星期几
 *
 *  @param index
 *
 *  @return
 */
+(NSString *) weekdayStringFromIndex:(NSInteger)index ;
/**
 *  获取某天是星期几
 *
 *  @param inputDate
 *
 *  @return
 */
+ (NSString*)weekdayStringFromDate:(NSDate*)inputDate;
/**
 *  判断是否是今天
 *
 *  @param dateString
 *
 *  @return
 */
+(BOOL) isToday:(NSString *)dateString ;


@end
