//
//  NSDictionary+LogDictionary.h
//  无忧云车司机
//
//  Created by luosai19910103@163.com on 15/7/8.
//  Copyright (c) 2015年 wuyouyunche. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (LogDictionary)
- (NSString *)log;

+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

+ (NSString*)dictionaryToJson:(NSDictionary *)dic;
@end
