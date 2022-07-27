//
//  MyGreeterClient.m
//  test1
//
//  Created by tim wang on 2022/7/27.
//

#import "MyGreeterClient.h"

@implementation MyGreeterClient

#pragma mark - 创建单例
+ (instancetype)sharedInstance {
    static MyGreeterClient *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[MyGreeterClient alloc] init];
    });
    return sharedInstance;
}


#pragma mark - 方法相关
// 获取问候
- (nullable NSString *)getGreetingMessage{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"HH"];
    NSDate *datenow = [NSDate date];
    NSString *hourStr = [formatter stringFromDate:datenow];
    int hour = [hourStr intValue];
    if(hour >= 6 && hour < 12){
        return @"Good morning";
    }else if(hour >= 12 && hour < 18){
        return @"Good afternoon";
    }else{
        return @"Good evening";
    }
}



@end
