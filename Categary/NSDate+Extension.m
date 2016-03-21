//
//  NSDate+Extension.m
//  无忧云车司机
//
//  Created by luosai19910103@163.com on 15/10/8.
//  Copyright © 2015年 wuyouyunche. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)
+ (NSTimeInterval) timeIntervalfromDateString:(NSString *)dateString DateFormat:(NSString *)format
{
    NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = format ;
   return  [[formatter dateFromString:dateString] timeIntervalSince1970];
}
+ (NSString *) stringfromDate:(NSDate *)date DateFormat:(NSString *)format
{
    NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
    if (format==nil) {
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss" ;
    }else{
        formatter.dateFormat = format ;

    }
    return [formatter stringFromDate:date];
}

+ (NSDate*) datefromDateString:(NSString *)dateString DateFormat:(NSString *)format
{
    NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = format ;
    return  [formatter dateFromString:dateString];
}

+ (BOOL) isToday:(NSString *)dateString{
    
    NSArray *dateArray = [dateString componentsSeparatedByString:@"-"];
    NSInteger year = [dateArray[0] integerValue];
    NSInteger month = [dateArray[1] integerValue];
    
    NSString* todayString = [NSDate stringfromDate:[NSDate date] DateFormat:@"yyyy-MM"];
    NSArray *nowDateArray = [todayString componentsSeparatedByString:@"-"];
    NSInteger Nowyear = [nowDateArray[0] integerValue];
    NSInteger nowMonth = [nowDateArray[1] integerValue];
    if (year==Nowyear&&month==nowMonth) {
        return YES ;
    }
    return NO ;
}

+ (NSString*)weekdayStringFromDate:(NSDate*)inputDate {
    
    NSArray *weekdays = [NSArray arrayWithObjects: [NSNull null], @"星期日", @"星期一", @"星期二", @"星期三", @"星期四", @"星期五", @"星期六", nil];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    NSTimeZone *timeZone = [NSTimeZone systemTimeZone];;
    
    [calendar setTimeZone: timeZone];
    
    NSCalendarUnit calendarUnit = NSWeekdayCalendarUnit;
    
    NSDateComponents *theComponents = [calendar components:calendarUnit fromDate:inputDate];
    
    return [weekdays objectAtIndex:theComponents.weekday];
    
}

+ (NSString *) weekdayStringFromIndex:(NSInteger) index{
    NSArray *weekdays = [NSArray arrayWithObjects: [NSNull null],@"星期日", @"星期一", @"星期二", @"星期三", @"星期四", @"星期五", @"星期六", nil];
    return weekdays[index];
    
}

+ (NSRange ) dayRangeInMonth:(NSDate *)inputDate{
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    NSTimeZone *timeZone = [NSTimeZone systemTimeZone];;
    
    [calendar setTimeZone: timeZone];
    
    NSRange range = [calendar rangeOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:inputDate];
    return range ;
}

@end
