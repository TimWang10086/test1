//
//  MyGreeterClient.h
//  test1
//
//  Created by tim wang on 2022/7/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyGreeterClient : NSObject
///  实例化
+ (instancetype)sharedInstance ;
/// 根据当前时间获取问候
- (nullable NSString *)getGreetingMessage;

@end

NS_ASSUME_NONNULL_END
